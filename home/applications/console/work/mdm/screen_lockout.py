import sh

idle_delay: int = int(
    sh.gsettings(["get", "org.gnome.desktop.session", "idle-delay"]).split()[1]
)
lock_delay: int = int(
    sh.gsettings(["get", "org.gnome.desktop.screensaver", "lock-delay"]).split()[1]
)
print(idle_delay + lock_delay, end="")
