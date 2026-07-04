Yes, **you can trigger your script every time a new monitor is plugged in**, but it requires integrating with **Linux's event system** — typically via **`udev`**, optionally with tools like **`autorandr`**, **`udev rules`**, or a **systemd user service**.

---

## ✅ Recommended approach: `udev` + systemd + wrapper script

### 1. **Create a udev rule**

`udev` can run a script when a monitor (display device) is connected. Create a rule like:

```bash
sudo nano /etc/udev/rules.d/99-monitor-hotplug.rules
```

```udev
ACTION=="change", SUBSYSTEM=="drm", RUN+="/usr/local/bin/monitor-change-handler.sh"
```

* This triggers when a **display changes** (e.g., monitor plugged/unplugged).
* `drm` is the Direct Rendering Manager, which includes GPUs and displays.

> Note: `RUN+=` executes *synchronously*, and long scripts can delay udev. It’s best to **trigger a separate systemd service** or script in the background.

---

### 2. **Create the script to handle monitor changes**

```bash
#!/usr/bin/env bash

# monitor-change-handler.sh

# Optional: delay slightly to let the system stabilize
sleep 1

# Determine active setup (naive example using xrandr)
activeMonitors=$(xrandr --listmonitors | grep -c '^ ')
echo "$activeMonitors monitors detected"

# Decide which config to use
if [[ "$activeMonitors" -eq 1 ]]; then
  setup="laptop-only"
elif [[ "$activeMonitors" -eq 2 ]]; then
  setup="dual"
else
  setup="triple"
fi

# Call your config-switching script
/home/youruser/bin/switch-hypr-setup "$setup"

# Reload Hyprland (optional and only works inside user session)
# hyprctl reload
```

Make sure it's executable:

```bash
chmod +x /usr/local/bin/monitor-change-handler.sh
```

---

### 3. **Use a systemd user service (optional but better)**

Since `udev` rules run as **root** and without your display environment, it’s more robust to have udev notify a **systemd user service**, which then runs your logic with access to your display session.

* `udev` writes a signal file (e.g. in `/tmp`)
* A `systemd --user` service uses `inotify` to detect that and run your script

Let me know if you want this fully set up; it’s a bit more complex but much more robust.

---

## 🧠 Alternative: `autorandr`

[`autorandr`](https://github.com/phillipberndt/autorandr) detects monitor layouts and executes **hooks** when it switches profiles.

Install it:

```bash
sudo apt install autorandr  # or your distro equivalent
```

Create profiles:

```bash
autorandr --save laptop-only
autorandr --save dual
```

Add post-switch hooks:

```bash
~/.config/autorandr/postswitch
```

```bash
#!/usr/bin/env bash
# Called after switching monitor setup

# Get current profile
profile="$AUTORANDR_CURRENT_PROFILE"

echo "Switching Hyprland config for profile: $profile"
/home/youruser/bin/switch-hypr-setup "$profile"
```

---

## ✅ Summary

| Method                    | Pros                           | Cons                                  |
| ------------------------- | ------------------------------ | ------------------------------------- |
| `udev` rule               | Low-level, runs on all systems | Must be root, tricky with GUI scripts |
| `systemd --user` + `udev` | Robust and secure              | More setup complexity                 |
| `autorandr`               | Easy and user-friendly         | Depends on `xrandr`, may need setup   |

---

Let me know which route you'd like to pursue, and I can give you a step-by-step setup.

---

Great! Since you're on **NixOS**, the setup changes a bit — but **you can still automatically trigger your Hyprland config switch** on monitor events.

Here’s how to do it **the NixOS way**, using the tools best suited to a declarative system.

---

## ✅ Recommended on NixOS: `autorandr` + `systemd.user` service + `switch-hypr-setup` script

### Why this route works well on NixOS:

* `autorandr` works without `udev` rules.
* `systemd --user` is compatible with Hyprland (Wayland session).
* You can declaratively enable everything via `home-manager` or your system config.

---

## 🔧 Step-by-step Setup

### 1. **Enable and configure `autorandr`**

In your **NixOS config** or **home-manager**:

```nix
{
  programs.autorandr = {
    enable = true;
    profiles = {
      "laptop-only" = {
        config = {
          # Minimal config; autorandr will fill in actual output names
        };
      };
      "dual" = {
        config = { };
      };
    };
  };
}
```

Then, after rebuilding, plug in your setups and run:

```bash
autorandr --save laptop-only
autorandr --save dual
```

> This creates profiles based on detected monitors (`~/.config/autorandr`).

---

### 2. **Write a hook to switch your Hyprland config**

Create `~/.config/autorandr/postswitch`:

```bash
#!/usr/bin/env bash

setup="$AUTORANDR_CURRENT_PROFILE"
echo "🔄 Switching Hyprland config to '$setup'"
/home/YOU/bin/switch-hypr-setup "$setup"

# Optional: Reload Hyprland if already running
# hyprctl reload
```

Make it executable:

```bash
chmod +x ~/.config/autorandr/postswitch
```

---

### 3. **Create the `switch-hypr-setup` script**

```bash
#!/usr/bin/env bash
set -euo pipefail

setupName="$1"
CFG="${CFG:-$HOME/.config}"
hyprDir="$CFG/hypr"
hyprSetupsDir="$CFG/hypr-setups"
setupPath="$hyprSetupsDir/$setupName"

if [ ! -d "$setupPath" ]; then
  echo "❌ No such setup: $setupPath"
  exit 1
fi

rm -rf "$hyprDir"
ln -s "$setupPath" "$hyprDir"
echo "✅ Linked $setupPath to $hyprDir"
```

Put it in `$HOME/bin/switch-hypr-setup` or equivalent.

---

### 4. **Enable the autorandr systemd user service**

In **home-manager**:

```nix
systemd.user.services.autorandr = {
  Enable = true;
  Unit = {
    Description = "autorandr profile switcher";
  };
  Service = {
    ExecStart = "${pkgs.autorandr}/bin/autorandr --change --skip-options";
  };
  Install = {
    WantedBy = [ "default.target" ];
  };
};
```

Or just manually:

```bash
systemctl --user enable autorandr.service
systemctl --user start autorandr.service
```

Now every time a monitor is plugged in or removed, `autorandr` will detect the change, select the profile, and your script will update the Hyprland config symlink.

---

## ✅ Optional: Hook into Hyprland reload

To avoid logging out:

```bash
hyprctl reload
```

You can add this to your `postswitch` hook *after* the symlink is updated — just make sure Hyprland is already running.

---

## ✅ Summary

| Component           | Role                                       |
| ------------------- | ------------------------------------------ |
| `autorandr`         | Detect monitor layout changes              |
| `postswitch`        | Hook to run your symlink logic             |
| `switch-hypr-setup` | Script to point Hyprland to correct config |
| `systemd --user`    | Ensures autorandr runs on session startup  |

This method is **clean**, **declarative**, and plays nicely with **Wayland and Hyprland** under **NixOS**.

Let me know if you'd like to turn this into a Nix flake or module for your dotfiles.
