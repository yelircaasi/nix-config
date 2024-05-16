# Nebokrai Notes

name idea: ganttstopme, ganttstopmenow, planalyzer

```txt

AppFlowy is a web application, which means that you can use it on any device that has a web browser. To host it so that you can use it on your Android device and desktop, there are a few options:

1. Host it on a server and access it through a web browser on your desktop and Android device: You can host AppFlowy on a server and access it through a web browser on your desktop or Android device. This way, you can use AppFlowy on any device that has a web browser.
2. Install a local server on your desktop and access it through a web browser on your desktop and Android device: You can install a local server on your desktop and access AppFlowy through a web browser on your desktop or Android device. This way, you can use AppFlowy on your desktop without an internet connection, and access it on your Android device through a local network.
3. Use a cloud-based service that allows you to host web applications: There are several cloud-based services, such as AWS, DigitalOcean, and Heroku, that allow you to host web applications. You can host AppFlowy on one of these services and access it through a web browser on your desktop or Android device. This way, you can use AppFlowy on any device that has a web browser, and you don't need to worry about managing a server.

Regardless of which option you choose, it's important to make sure that you keep your AppFlowy account secure by using a strong and unique password, and enabling two-factor authentication if possible.

                search “hosting” [discord.com/channels/903549834160635914/903553722804748309](https://discord.com/channels/903549834160635914/903553722804748309)
```

## Design and Development Notes TODO: CLEANUP

* make a habit-building subapp in the scheduling app
* use the concept of satisfiability -> [libsolv](https://github.com/openSUSE/libsolv)
* → make nebokrai usable as a plugin/integration for smos?
* how to integrate appflowy into a system with taskwarrior, ganttouchthis, timewarrior, telegram, etc?
* Name ideas: nebokrai (horizon, +[consilium](https://en.wiktionary.org/wiki/consilium), ganttouchthis, taskifist, roadmapper)
* Add daily (yesterday) review to tracking feature → circular feedback, as review requires editing declaration, but thisis a feature, rather than a bug or compromise
* Include commands such as `nebokrai check` to ensure inputs and outputs are in a consistent state → add optimizations such as caching and using time last edited → make certain files read-only by all except nebokrai user
* GTT: tui with typer? which dependencies? pure stdlib? -> integration with vit / taskw / taskwarrior -> later: rewrite in Rust?
* Twilio → SMS?
* Zapier?
* IRC?
* learn about plugin architecture - neovim, qutebrowser, anki, qtile, xplr, emacs, awesome, hilbish, vim, wezterm, kitty, other lua-configurable apps, etc
* name ideas: teclado, accordo, keycritic
* name ideas: taskifist, consilium, nebokrai, haskwarrior

### Discord Discussion TODO: CLEANUP

* ( ) [discord.com/channels/834325286664929280/877666474888675368/1222613062796705862](https://discord.com/channels/834325286664929280/877666474888675368/1222613062796705862)
Can I workshop an idea with you people? Seems like as good a place as any
Vhyrro — 27/03/2024 19:28
yeah sure why not
yelircaasi — 27/03/2024 19:29
The basic idea, one I have sloppily prototyped in Python and am now re-writing in Haskell (because of course), is "pure functional personal planning and scheduling"
Declare a calendar with ad hoc entries and (the interesting part) roadmaps consisting of projects consisting in turn of tasks. Then the program derives a plan (mapping task -> day) and from there a schedule (mapping task -> entry -> time) according to parameters declared, such as priority, blockers, and estimated min/normal/max time per task, fixedness/flexness etc.
* This will be compatible with existing tools like neorg::gtd, taskwarrior, xit, etc. But the mechanism for enforcing coherence between long-term goals and day-to-day plans is something I haven't found elsewhere. And for a certain personality type (mine, but presumably not uncommon among programmers) this sort of thing helps a lot with motivation
Vhyrro — 27/03/2024 19:35
Lowkey sounds like something I've also been conjuring up :kek:
The initial idea was to be able to specify an estimated time for each task, and allow a system to sort and organize based on time taken
with the idea of it also being able to adapt to certain behaviours to be more accurate
yelircaasi — 27/03/2024 19:37
I had looked around extensively and not found anythng that solves this problem. It's important to me not to needlessly duplicated existing work, but this really seems to be a gap that needs filling
pysan3 — 27/03/2024 19:37
Is this talking about team task or personal tasks?
Vhyrro — 27/03/2024 19:37
both honestly
yelircaasi — 27/03/2024 19:37
I'm focused on individual tasks, but I'm sure the principle could be applied to teams as well
Vhyrro — 27/03/2024 19:37
Just like the link integrity, I was thinking of some foundation for linking between atomic data like tasks
projects are just groups of tasks with an optional title
I'll not be working on that for a long while though, so let your ideas run wild. If you figure out anything groundbreaking we could adopt it for sure!
pysan3 — 27/03/2024 19:39
Am I correct imaging the output to be something similar to a gantt chart?
yelircaasi — 27/03/2024 19:39
the canonical example for me is, say you have 20 books you want to read in the next two years. Certain books are more important, certain should be read before others (the blocker principle I mentioned). And it would be nice to have a tool to automatically create this
Vhyrro — 27/03/2024 19:40
In my case I was thinking of a multidimensional calendar (<https://julian.digital/2023/07/06/multi-layered-calendars/>)
julian.digital
julian
Multi-layered calendars
Calendars cover the entire spectrum of time. Past, present and future. They are the closest thing we have to a time machine. Calendars allow us to travel forward in time and see the future. More importantly, they allow us to change the future.
Multi-layered calendars
yelircaasi — 27/03/2024 19:40
Yes, that's actually how this started. At sone point, Gantt charts were too inflexible, and having to push everything back by hand grew tiresome (because as we know, pufe happens)
Vhyrro — 27/03/2024 19:40
multi layered calendars are also a super cool concept which Sevoris pointed me at
yet again, an idea I had but just much more rigorously planned out by this lad before me :kek:
yelircaasi — 27/03/2024 19:41
That's really cool, definitely in the same vein.
My hope is to have the project sketched out in generously-commented haskell in the next few weeks, so that the logic of planning and scheduling is easy to read and  reason about
Vhyrro — 27/03/2024 19:43
your idea sounds super cool so yeah do it man
pysan3 — 27/03/2024 19:43
This is cool. I mean I always wanted the BLOCK feature to accommodate the travel time and didn’t find anything useful
pysan3 — 27/03/2024 19:44
Very interesting
Vhyrro — 27/03/2024 19:44
It gets cooler the more you think about it :kek:
yelircaasi — 27/03/2024 19:44
I had it working in python, then changed too much, got tired of the million tests Python requires and decided to switch. After all, if I'm trying to present a project claiming to provide pure functional planning and scheduling, the first question is always going to be "You did this is Python???"
pysan3 — 27/03/2024 19:44
Umm, tho I think writing in rust gets you the most contributors :kek:
Vhyrro — 27/03/2024 19:44
haskell is useful in the sense that you can guarantee it's purely functional
when it comes to fundamental building blocks and algorithms being able to represent them in this way is generally good
@yelircaasi make in ocaml for 🐐 points :kek:
yelircaasi — 27/03/2024 19:46
Tbh, I thought a lot about this. But with my background, having written more Nix than C/C++ ir anything Rust-like, the jump to Haskell seems easier. And Haskell is a very natural choice for this project
b4mbus — 27/03/2024 19:46
Nahh we got 8d calendars before gta6
Vhyrro — 27/03/2024 19:46
for real ☠️
b4mbus — 27/03/2024 19:47
Haskell's syntax and semantics are nowhere near Nix'es tho
yelircaasi — 27/03/2024 19:47
But I certainly have Rust on my radar and hope to release a Rust project sooner or later, stay tuned. But this project, preliminarily named Nebokrai, is my first love, so I want to focus as much as possible
Vhyrro — 27/03/2024 19:47
👏 make 👏 in 👏 ocaml
b4mbus — 27/03/2024 19:47
Do you know any already? If no, then I can point you at some banger resources
pysan3 — 27/03/2024 19:48
At some point you’d want to manually reorder tasks regardless of what the program recommends, and pure functional langs will be kinda pain to keep these in track?
yelircaasi — 27/03/2024 19:48
but the general logic is there. I see a lot that reminds me of Nix, and the general mindset and reasoning are similar. It feels comfortable.
b4mbus — 27/03/2024 19:48
.. why?
Vhyrro — 27/03/2024 19:48
imo what's most important is the fundamental algorithm, not the reordering part
the reording part is a layer on top of the algorithm, not the algo itself
b4mbus — 27/03/2024 19:48
Reordering stuff is the runtime, the behaviour of the program
Yeah
Vhyrro — 27/03/2024 19:49
data goes in, sorted list goes out. whatever you do with that data afterwards is up to you :D
yelircaasi — 27/03/2024 19:50
I think this is a feature of the approach, at least for me. You pass in your json (dhall, kdl, nickel, potentially whatever sexy config language you like) and you get the output as a direct result of your priorities, available time, and temporal dependencies. To change the output, change the input
Or, if you must, edit the output schedule, in txt or tex or whatever
yelircaasi — 27/03/2024 19:52
yeah, I can get behind this. After all, user knows best. At the same time, if you follow the generated schedule, you know your actions are in accordance with yur long-term goals, according to the criteria you yourself specified
pysan3 — 27/03/2024 19:54
Well, theories aside, I once made my task app and miserably failed with ocaml :PepeHands:
The more features I added, the more nested if-else and it was more hassle than benefit to use functional language…
I definitely think you guys are better programmers lol
Vhyrro — 27/03/2024 19:55
functional languages don't scale well for very large apps
but are perfect for smaller things like this which need to be solid and basically unbreakable
yelircaasi — 27/03/2024 19:55
I'm not a phenomenal programmer. If you read my Python code, you'll see ut's shit. And I made too many changes, it doesn't even run
Vhyrro — 27/03/2024 19:55
functional languages force you to break down the problem into its smallest constituent parts
yelircaasi — 27/03/2024 19:56
But that's what I love about Haskell, it forces you to be a good programmer, like it or not :kek:
pysan3 — 27/03/2024 19:56
And the lack of libraries was also a pain. I don’t regret using python-poetry all the time now lol
yelircaasi — 27/03/2024 19:57
and this is perfect for the kinds of ordering and scheduling algorithms I am writing. I really think Haskell is a good choice. But maybe I'll be back in a month to announce the RiR :kekw:
yelircaasi — 27/03/2024 19:58
Poetry is Python's redeeming feature. A bit bitter on NixOS to be forced to admit that I need FHS after all, but facts is facts...
pysan3 — 27/03/2024 20:00
What’s fhs?
yelircaasi — 27/03/2024 20:04
It's essentially a shell that recreates the normie filesystem hierarchy standard. Makes it easy, for example, to use Poetry to install packages that have Cuda dependencies or other .so dependencies. Since poetry2nix takes several hours to build each of pytorch and tensorflow with cuda and avx support...
yelircaasi — 27/03/2024 20:05
fhs is the normal Linux filesystem, as opposed to "everything in /nix/store and make symlinks as necessary"
pysan3 — 27/03/2024 20:08
Oh didn’t know that problem in the first place. Yah I kinda wonder why nix guys praise nix but then pay huge extra times to even make it work for basic things.
Imo It’s definitely good for people who only use google chrome but not for us developers who wants to tinker the system
Yet another poor guy on nixos: [nvim-neorg/neorg/issues/1342#issuecomment-2022690731](https://github.com/nvim-neorg/neorg/issues/1342#issuecomment-2022690731)
GitHub
Luarocks Issues Thread · Issue #1342 · nvim-neorg/neorg
If you're probably here you're either angry or you're sad :| The latest update, 8.0.0, has been a breaking change for users. This isn't a breaking change just because I felt like it...
Luarocks Issues Thread · Issue #1342 · nvim-neorg/neorg
yelircaasi — 27/03/2024 20:14
I'm absolutely a happy Nix user. But I admit that Python is not fully native on Nix. But to be fair, creating an FHS environment on NixOS is trivially easy, so the benefits outweigh the drawbacks for me. The only real pain point is the lack of static typing in Nix... imagine the kind of error messages you get in a language that is purely functional, strongly and dynamically typed, lazily evaluated, and lazily documented. It's what you'd expect :kek:
* And I still love it
yelircaasi — 27/03/2024 20:17
I'd say any immutable system is good for a browser native. My main use case is being able to declare coherent colors and keybinds in one central location and interpolate them everywhere. Still a WIP, but I love it already
pysan3 — 27/03/2024 20:17
Maybe it’s just that I don’t know enough nix
yelircaasi — 27/03/2024 20:19
I'm certainly not pretending to be an expert. Just an amateur skilled in the art of ethical plagiarism

## Notes to Sort TODO: CLEANUP

### Overall Notes - Sort TODO: CLEANUP

* make signal-based or matrix-based apps for sending links to myself without email or notion → or use email client? XMPP, Matrix, SMTP, POP3, IMAP, IRC
* CLI “Digital Assistant”
* Design Goals: Create a system that takes into account all obligations, goals, and values to optimally allocate time. Most importantly, this system should be:
  * purely functional: the same inputs will always result in the same outputs, with no side-effects
  * declarative: the entities.base (tasks, etc.) and settings declared provide a complete specification of my system; I say 'what' and the software tells me 'when'.
  * simple and intuitive to use
  * robust: when circumstances change, I can adjust the plans via the interface provided (as opposed to internal hacking) and carry on without problems
  * integrated: planager provides an all-encompassing system to keep all aspects of my life in order
  * simplifying: this tool should save me time and reduce my cognitive load, not become a distraction or an obstacle
* Additionally, my system must be:
  * reproducible - installable via Nix
  * all-encompassing
  * cross-device
  * self-syncing
  * well-defined
  * robust (able to deal dynamically with unforeseen circumstances)
  * hierarchical (goal broken into tasks, each of which can be recursively broken into tasks)
  * keyboard-driven
  * aesthetically pleasing
  * in keeping with the Second Brain framework

C (Capture)

O (Organise)

D (Distill)

E (Express)

* integrated and internally consistent
* End result:
  * phone app (android or linux mobile) → Notion or Appflowy
  * phone notifications: from app or via Telegram or other
  * frontend in neovim using neorg.nvim
  * automatic (hook-driven) and encrypted sync between devices, sync server
  * features:
  * built on the .norg file format
  * basic tack tracking, functionality from taskwarrior → probably replicate without
  * roadmap-based task scheduling and adjustment, as supplied by ganttouchthis
  * automatic, configurable, and manually adjustable planning (15-minute blocks with sufficient flex time)
  * recurring tasks and routines (as given by current Telegram bot)
  * performance analytics and summaries
* Consituents
  * planager-core → divide into scheduling and tracking? implement in Rust, Haskell, Ocaml, Idris, Agda, or Purescript
  * planager-backend - serves -flutter, -frontend, -signal, -nvim?, -tui? → IHP, Obelisk, Yesod, or Warp?
  * planager-flutter - for Android app → alternative like Kivy or cross-platform Rust toolkit [dioxus](https://dioxuslabs.com/), or Flutter Rust bridge?
  * planager-frontend
  * planager-signal → semaphore of signal-cli or signal-api-rest-api or signal-bot (java) or libsignal or signal-server?
  * requirements
    1. notify of start/end of schedule entries
    2. record (as response to prompts) status of tasks, including sub-items of routines
    3.
  * planager.nvim - from nvim with Neorg, or as neorg module?
  * planager-tui - bubbletea, rich, textual, or Ratatui?
  * planager-django - prototying for backend → alternatives: flask, cherry-py, fastapi?
  * planager-sync
  * Old: Overall Project Structure
  * Databases - synced across server, phone, and desktop (backed up on Github/Google Drive/NextCloud?)
    * TW database
    * GTT JSON data
  * Hosted VM server Linode, Heroku, Digital Ocean, Replit…?)
    * GTT Engine
    * Scheduler (merge into GTT → planager - or include GTT as a dependency?)
    * recurring tasks and set routines
    * Tracker - food, fitness, etc.
      * combining with scheduler and GTT into controller app?
    * Telegram Bot (or over way to send notifications)
    * Weekly Email Report
    * Sync between taskwarrior, GTT
  * Zapier Hooks?
  * Desktop GTT TUI
    * communication with server
  * (inthe.am, Foreground App)
  * Taskwarrior
    * TUI: Vit / taskwarrior-tui
    * taskw for interaction with Python packages
  * Timewarrior
  * AppFlowy → accessible from Android and Linux
  [appflowy](https://appflowy.io/) - just needs cloud setup, vim keybindings, and customizable colors → on the way? [shortcuts](https://docs.appflowy.io/docs/appflowy/community/appflowy-mentorship-program/mentorship-2022/mentee-projects/shortcuts-and-customized-hotkeys-for-appflowy) and [color themes](https://docs.appflowy.io/docs/appflowy/community/appflowy-mentorship-program/mentorship-2022/mentee-projects/custom-themes) - shortcuts may require further hacking, or maybe just a kanata/other layer on top [...](https://blog.appflowy.io/appflowy-2nd-anniversary-and-2023-roundup/)
* ( ) get Android build for AppFlowy working → [appflowy-io/appflowy/actions/runs/4582846778/jobs/8093324716](https://github.com/AppFlowy-IO/AppFlowy/actions/runs/4582846778/jobs/8093324716)
* ( ) [docs.flutter.dev/deployment/android](https://docs.flutter.dev/deployment/android)
* ( ) [appflowy-io projects](https://github.com/orgs/AppFlowy-IO/projects)
* ( ) eventually add vim keybindings (<https://appflowy.gitbook.io/docs/essential-documentation/shortcuts>)
      * ChatGPT on hosting

```sh
  * General advice

                Here are some best practices for planning, organizing, and tracking your time:

                1. Create a daily and/or weekly schedule: Make a list of tasks or activities that you need to complete for each day or week. Prioritize the most important tasks and schedule them during your most productive time of the day.
                2. Use a task management system: Choose a task management tool that works for you, such as a to-do list app or a project management tool. This will help you keep track of your tasks and ensure you don't miss any deadlines.
                3. Block out time for focused work: Schedule uninterrupted time for work that requires your full concentration. Use this time to complete tasks that require your full attention, and avoid distractions like social media and email.
                4. Take regular breaks: Taking breaks helps you recharge and stay focused. Try the Pomodoro technique, which involves working for 25 minutes and taking a 5-minute break, then repeating this cycle.
                5. Use a time tracker: Track your time to see where you're spending it. This will help you identify time-wasting activities and areas where you can improve your productivity.
                6. Review your progress regularly: Take time at the end of each day or week to review your progress. Celebrate your successes, identify areas for improvement, and adjust your schedule and tasks as necessary.
                7. Be flexible: No matter how well you plan, unexpected things will always come up. Be flexible and willing to adjust your schedule and tasks as needed to accommodate these changes.

                Remember, finding a system that works for you may take some trial and error. Experiment with different tools and techniques until you find what works best for you.
```

* Miscellaneous
  * add/edit projects & tasks in popup, in command line, or in .norg file
  * input → output principle:
  * routines, projects, and settings as input, schedule & summary statistics as output
  * schedule + tracking as input → log and performance metrics as output

### Planning TODO: CLEANUP

* Planning Features
  * day maximum (from calendar) and rollover when this max is exceeded
  * use of priority
  * respecting precedence requirements (dependency of one task on another)
  * Planning Algorithm (Vanilla):
        1. get all tasks (via roadmaps

### Tasks TODO: CLEANUP

* Task definition entry points:
  * nvim
  * command line
  * Notion (check API and pull following trigger)
  * Task definition types:
  * from project creation
  * from project editing
  * manual add

### Scheduling TODO: CLEANUP

calendar is direct parent of schedules, containing appointments and day     parameters -> calendar folder containing a file for each day

adhoc is counterpart to plan, containing tasks (but one-off, non-derivable) -> adhoc folder containing a file for each day

* Scheduling Features
  * fixed entries (x.ismovable)
  * ordering of entries (x.order)
  * iterative compression according to priority
  * category blocks and entry categories:
  * strict: work task only during blocked work hours
  * non-strict: work task goes to work if available, otherwise scheduled as a normal task
  * rewrite ad hoc file format to allow task specification by names (or other attribute, perhaps) → include fuzzy search with minimum string similarity (?) for name & other attributes
  * TODO: make it so that fixed events can also be resized
  * use name optionally instead of .block attribute?
  * fix entry adding to allow for ‘flow’ around fixed items
  * implement ‘snapping’ logic when the gap between tasks is small
  * how to measure performance and execution time, visualizing each function call?
  * move some functions from …algorithms.scheduling into the Schedule class ✓

  * fixed entries: `e.ismutable == False`

  * Scheduling and prioritization
  * blocks added automatically: routines and recurring tasks
  * blocks added manually (weekly and daily planning)
  * automatic filling in of tasks according to algorithm
  * manual editing of task schedulng
  * Scheduling Algorithm (Vanilla)

  * High-level description:

    1. A base schedule is specified in the calendar, which contains default recurring activities.
    2. From planning (typically quarterly and weekly), non-recurring "big rock" activities are added, each with a priority level that determines which takes precedence among a set of items competing for the same time.
    3. From the store of long-term roadmaps and projects and their corresponding tasks, tasks are assigned according to schedule and priority.
    4. When there are conflicts or too many tasks to fit in the available time, these are to be resolved first automatically according to the settings.

    The irresoluble conflicts or overloads are then resolved manually, but only by editing the declarations, upon which the schedule is recomputed.

    Low-level description of scheduling algorithm:

    1. check whether the entries fit in a day
    2. get the compression factor, i.e. how much, on average, the entries need to be compacted in order to fit
    3. separate entries into fixed (immovable) and flex (movable)
    4. add the fixed entried to the schedule
    5. identify the gaps
    6. fill in the gaps with the flex items TODO
    7. resize between fixed points to remove small empty patches (where possible)

    TODO: add `alignend` functionality (but first get it working without)

  * Entry adding test cases
* ( ) empty
* ( ) adding movable over empty
* ( ) adding immovable over empty
* ( ) add movable over empty, near other task, forcing snap: movable before movable,
* ( ) add movable over empty, near other task, forcing snap: movable after movable
* ( ) add movable over empty, near other task, forcing snap: movable on movable
* ( ) add movable over empty, near other task, forcing snap: immovable before movable
* ( ) add movable over empty, near other task, forcing snap: immovable after movable
* ( ) add movable over empty, near other task, forcing snap: immovable on movable
* ( ) - [ ]  add immovable over empty, near other task, forcing snap: movable before movable,
* ( ) add immovable over empty, near other task, forcing snap: movable after movable
* ( ) add immovable over empty, near other task, forcing snap: movable on movable
* ( ) add immovable over empty, near other task, forcing snap: immovable before movable
* ( ) add immovable over empty, near other task, forcing snap: immovable after movable
* ( ) add immovable over empty, near other task, forcing snap: immovable on movable
* ( ) - [ ]  add movable over empty, near other task, forcing no snap: movable before movable,
* ( ) add movable over empty, near other task, forcing no snap: movable after movable
* ( ) add movable over empty, near other task, forcing no snap: movable on movable
* ( ) add movable over empty, near other task, forcing no snap: immovable before movable
* ( ) add movable over empty, near other task, forcing no snap: immovable after movable
* ( ) add movable over empty, near other task, forcing no snap: immovable on movable
* ( ) - [ ]  add immovable over empty, near other task, forcing no snap: movable before movable,
* ( ) add immovable over empty, near other task, forcing no snap: movable after movable
* ( ) add immovable over empty, near other task, forcing no snap: movable on movable
* ( ) add immovable over empty, near other task, forcing no snap: immovable before movable
* ( ) add immovable over empty, near other task, forcing no snap: immovable after movable
* ( ) add immovable over empty, near other task, forcing no snap: immovable on movable
* ( ) - [ ]  add movable over movable, near other task, forcing snap: movable before movable,
* ( ) add movable over movable near other task, forcing snap: movable after movable
* ( ) add movable over movable near other task, forcing snap: movable on movable
* ( ) add movable over movable near other task, forcing snap: immovable before movable
* ( ) add movable over movable near other task, forcing snap: immovable after movable
* ( ) add movable over movable near other task, forcing snap: immovable on movable
* ( ) - [ ]  add immovable over movable near other task, forcing snap: movable before movable,
* ( ) add immovable over movable near other task, forcing snap: movable after movable
* ( ) add immovable over movable near other task, forcing snap: movable on movable
* ( ) add immovable over movable near other task, forcing snap: immovable before movable
* ( ) add immovable over movable near other task, forcing snap: immovable after movable
* ( ) add immovable over movable near other task, forcing snap: immovable on movable
* ( ) - [ ]  add movable over movable near other task, forcing no snap: movable before movable,
* ( ) add movable over movable near other task, forcing no snap: movable after movable
* ( ) add movable over movable near other task, forcing no snap: movable on movable
* ( ) add movable over movable near other task, forcing no snap: immovable before movable
* ( ) add movable over movable near other task, forcing no snap: immovable after movable
* ( ) add movable over movable near other task, forcing no snap: immovable on movable
* ( ) - [ ]  add immovable over movable near other task, forcing no snap: movable before movable,
* ( ) add immovable over movable near other task, forcing no snap: movable after movable
* ( ) add immovable over movable near other task, forcing no snap: movable on movable
* ( ) add immovable over movable near other task, forcing no snap: immovable before movable
* ( ) add immovable over movable near other task, forcing no snap: immovable after movable
* ( ) add immovable over movable near other task, forcing no snap: immovable on movable
* ( ) - [ ]  add movable over immovable, near other task, forcing snap: movable before movable,
* ( ) add movable over immovable near other task, forcing snap: movable after movable
* ( ) add movable over immovable near other task, forcing snap: movable on movable
* ( ) add movable over immovable near other task, forcing snap: immovable before movable
* ( ) add movable over immovable near other task, forcing snap: immovable after movable
* ( ) add movable over immovable near other task, forcing snap: immovable on movable
* ( ) - [ ]  add immovable over immovable near other task, forcing snap: movable before movable,
* ( ) add immovable over immovable near other task, forcing snap: movable after movable
* ( ) add immovable over immovable near other task, forcing snap: movable on movable
* ( ) add immovable over immovable near other task, forcing snap: immovable before movable
* ( ) add immovable over immovable near other task, forcing snap: immovable after movable
* ( ) add immovable over immovable near other task, forcing snap: immovable on movable
* ( ) - [ ]  add movable over immovable near other task, forcing no snap: movable before movable,
* ( ) add movable over immovable near other task, forcing no snap: movable after movable
* ( ) add movable over immovable near other task, forcing no snap: movable on movable
* ( ) add movable over immovable near other task, forcing no snap: immovable before movable
* ( ) add movable over immovable near other task, forcing no snap: immovable after movable
* ( ) add movable over immovable near other task, forcing no snap: immovable on movable
* ( ) - [ ]  add immovable over immovable near other task, forcing no snap: movable before movable,
* ( ) add immovable over immovable near other task, forcing no snap: movable after movable
* ( ) add immovable over immovable near other task, forcing no snap: movable on movable
* ( ) add immovable over immovable near other task, forcing no snap: immovable before movable
* ( ) add immovable over immovable near other task, forcing no snap: immovable after movable
* ( ) add immovable over immovable near other task, forcing no snap: immovable on movable
* ( ) .
* ( ) impossible: any over saturated day
* ( ) impossible: any on day without enough room
* ( ) impossible: immovable on top of immovable
* ( ) [ ]

### Scheduler Notes TODO: CLEANUP

* ( ) [medium.com/@thegapfill/productivity-article-eb1df36d4dbf](https://medium.com/@thegapfill/productivity-article-eb1df36d4dbf) 
* ( ) [researchgate.net/publication/341780522_task_scheduling_in_cloud_computing_a_survey/link/5f37b224458515b729221960/download](https://www.researchgate.net/publication/341780522_Task_Scheduling_in_Cloud_Computing_A_Survey/link/5f37b224458515b729221960/download)
* ( ) [algorithms for scheduling problems](http://library.lol/main/5E75C506698832A19DCF51915EA014A4)
* ( ) [researchgate.net/publication/337148981_planning_and_scheduling_problems_of_production_systems_review_classification_and_opportunities](https://www.researchgate.net/publication/337148981_Planning_and_scheduling_problems_of_production_systems_review_classification_and_opportunities) → file:///home/isaac/Downloads/R5_IJPQM_05November19_IBNMAJDOUZINEB_PlanningandschedulingproblemsofproductionsystemsReview.pdf
* ( ) [tutorialspoint.com/operating_system/os_process_scheduling_algorithms.htm](https://www.tutorialspoint.com/operating_system/os_process_scheduling_algorithms.htm)
* ( ) [academia.edu/6718638/scheduling_problems_an_overview](https://www.academia.edu/6718638/Scheduling_problems_An_overview)
* ( ) [types of task scheduling algorithms in cloud computing environment](https://www.intechopen.com/chapters/71902)
* ( ) [natural intelligence for scheduling, planning and packing problems *[1 ed.]](http://libgen.rs/book/index.php?md5=9BC05329D09109CF82B0FB7386889764)*
* ( ) [decision analysis, location models, and scheduling problems *[1 ed.]*](http://libgen.rs/book/index.php?md5=805513A81A24B94975F802FE4F3C2ECF)
* ( ) [constraint-based scheduling: applying constraint programming to scheduling problems *[1 ed.]*](http://libgen.rs/book/index.php?md5=9D333284F1AF9D661620AD274CF113B7)
* ( ) [web-static.stern.nyu.edu/om/faculty/pinedo/scheduling/sched.pdf](https://web-static.stern.nyu.edu/om/faculty/pinedo/scheduling/sched.pdf)
* ( ) [javatpoint.com/activity-or-task-scheduling-problem](https://www.javatpoint.com/activity-or-task-scheduling-problem)
* ( ) [teamdoapp.com/inspiration/increase-productivity-with-effective-task-scheduling](https://teamdoapp.com/inspiration/increase-productivity-with-effective-task-scheduling/)
* ( ) [machine learning and optimization for production rescheduling in industry 4.0](https://link.springer.com/article/10.1007/s00170-020-05850-5)

### Entries TODO: CLEANUP

* Ways to add an entry
        1. from calendar
        2. from plan via explicit declaration (project file)
        3. from plan, without explicit declaration (roadmap file)
        4. from ad hoc
        5. from routines
* Entry Adding: An Entry object can be added to a Schedule object from one of 5 origins:
  * from Calendar (base schedules)
  * from plan via explicit declaration in project file
  * from plan via project expansion from roadmap file
  * from AdHoc, from adhoc file
  * from Routines, from routines file

### Planning and Scheduling (shared) TODO: CLEANUP

* Project and Task Dependency Logic
  * use only `.after` attribute; `.before` superfluous
  * add `.tmpdate` (or maybe `.placeholder_date`) attribute to tasks for sorting; default NullDate to allow for easy complex comparisons
  * 2-pass approach for planning: first regular planning to assign tmpdate, then adjust for dependencies
  * use special sorting (`__gt__ , __lt__, __ge__, __le__`) that first looks at `.after`, then at `.tmpdate`

  * Extension: Norg links allow me to specify sequential dependency relationships between tasks

  * Blocking Logic
  * blocks like 'work' that other smaller, more specific tasks can be scheduled on top of
  * blocks come from Calendar, AdHoc, Routines
  * potentially also from regular (roadmap-originating) tasks
  * used to 'collapse' durations together for planning and scheduling
  * Task 'Stacking'
  * combining tasks that can be done simultaneously, such as listening to a podcast on the way home
  * also allows 'time collapsing' during planning, scheduling with require something new and custom
  * Cases:
* ( ) plan overfull (error)
* ( ) plan fits exactly
* ( ) plan underfull
* ( ) rollover required (with priorities)
* ( ) with dependencies

### Tracking TODO: CLEANUP

* Habits to track:
  * all foods (with times)
  * time breaking fast
  * last time eating
  * bool: entirely plant-based? entirely non-processed?
  * food score
  * cold shower
  * daily walk (5x/week)
  * run (5x/week) - with recorded data
  * sets of pushups
  * sets of pullups
  * stretching
  * wisdom literature
  * last use of phone
  * number of texts sent
  * emails clean? (both) bookmarks clean?
  * journal
  * cleanliness & orderliness of apartment
  * bool: mast.
  * time doing absolutely nothing
  * quality of meditation
  * something new I learned
  * which languages I used
* Habits / metrics to track:

    all foods (with times)
    time breaking fast
    last time eating
    bool: entirely plant-based? entirely non-processed?
    food score

    cold shower
    daily walk (5x/week)
    run (5x/week) - with recorded data
    sets of pushups
    sets of pullups
    stretching
    wisdom literature
    last use of phone

    number of texts sent
    emails clean? (both) bookmarks clean?
    journal
    cleanliness & orderliness of apartment
    bool: mast

    30 minutes doing absolutely nothing
    bool: getting lost in a good book
    quality of meditation
    something new I learned
    which languages I used
* TRACKING:
 manually via neorg, or via semaphore. One file per metric for easy
* tracking; move dates more than 30 days old to the old store (more
* efficient format?)

### Sync, Multi-Device, Etc TODO: CLEANUP

* sync
  * preferred method: manual sync
* Features for quick updates
  * object dependency graph to only make necessary changes, depending on what has changed
  * automatic patch generation from edits → ‘reverse engineering’ of effects, almost analogous to backpropagation of desired changes

    Use norg link structure to track which files need to be updated?

    Declarative schedule generation:

  * directed graph for updates, acyclical for full recompute, but not necessarily acyclical for some updates: lower-level (e.g. schedule, task) edit may trigger necessary change at parent levels (tasks, projects)
* Storage
  * What is stored where and in which format?
        1. taskwarrior database
        2. notion frontend
        3. ganttouchthis store - on desktop, mobile, and server, with git backup
  * consistent & readable storage format → seamless integration with .norg files
* Hooks

    hooks to trigger updates: [neovim.io/doc/user/autocmd.html#events](https://neovim.io/doc/user/autocmd.html#events)

  * What are the hooks? I.e., which events trigger a sync from which component to which component?
        1. planning session defines projects, which are parsed into tasks and scheduled
        2. tasks are added to taskwarrior and synced to the server
        3. server sends mobile notifications according to schedule
        4. opening a relevant norg file results in pulling tasks from the taskwarrior database
        5. writing a tracked norg file results in pushing tasks back to the taskwarrior database and a sync with the server
        6. editing elsewhere triggers a sync with Notion; pulling from another app triggers a sync pulling from Notion, with optional manual trigger to sync with Notion

### Signal Integration TODO: CLEANUP

* Signal module:

    dependencies:

  * planager.tracking
  * planager.schedule
  * semaphore (Python package)
* Signal bot requirements → different chats or all-in-one?
    1. notify of start/end of schedule entries
    2. record (as response to prompts) status of tasks, incl. sub-items of routines
    3. accept request to edit declaration files, then edit & trigger recompute
    4. display (upon query) some (subset of) roadmap, plan, task, schedule, etc.
    5. show tracker information: streaks, percentage, habit strength, progress toward goals, …

### To Sort TODO: CLEANUP

* distinguish between naive plan and calendar-adjusted plan
* Add desirability -> eating frogs idea
* Fix planning to have completed tasks have zero time where appropriate and actual time where appropriate.
* Add extra catch-all roadmap
* Sort projects in dependency order
* Support earliest and latest dates, dependencies between tasks/projects/roadmaps -> raise error when declaration is impossible
* Nebokrai tracking:
* pre-programmed (still configurable) for:
* food & drink, workout, finances (expenditures), adherence to schedule/time use
* -> need to access goals via plan
* add earliest and latest start and end for each level of the roadmap-project-task hierarchy
* nebokrai: add subcommands: track, blame (tool to show origin of some aspect of derived result), edit, add (interactive), sync, dashboard, dryrun {subcommand}, revert -> make (where appropriate) CLI and TUI (= interactive) versions of subcommands
* nebokrai idea: "sacred" time blocks for flow
* tracking: collect texting statistics
* self-daily: presentation about yesterday and plans for today

### Old Notes TODO: CLEANUP

* old: Entity Types
  * roadmap: a 'master plan' for some area such as "Rust programing language" or "muscular flexibility" involving multiple steps or projects
  * project: a self-contained unit of work that can be broken down into smaller parts, such as a book to read or a coding project
  * task: a small, atomic unit of work, ideally one that can be completed in less than 120 minutes; can be recurring or one-time
  * sequences: an alias for a list of tasks which are always to be performed together (typically sequentially), such as a morning or evening routine; handled identically to a task
  * option set: a group of alternatives, from which I select one (or more); handled identically to a task
  * Old adjustment types

```python

        class AdjustmentType(Enum):
            AUTO = 0  # methods figure it out, based on priority and properties TODO: CLEANUP
            CLIP = 1  # higher-priority entry takes precedence and lower-priority activity makes way TODO: CLEANUP
            SHIFT = 2  #
            COMPRESS = 3  #
            COMPROMISE = 4  #
            DISPLACE = 5  #
```

* ( ) [appflowy-io/appflowy/issues/3125](https://github.com/AppFlowy-IO/AppFlowy/issues/3125)
* ( ) Which conversions are necessary?
* ( ) Which modules do I need to write? How can I minimize redundancies while maintaining flexibility and extensibility?
* ( ) Which off-the-shelf solutions exist already?
* ( ) rofi integration
* ( ) polybar integration
* ( ) What will be the APIs of the modules?
* ( ) Which programming languages will I use for each module?
* ( ) try to run signald in a docker container
* ( ) read semaphore docs and read through examples
* ( ) → eventually add neorg - anki interface
* ( ) Add purity checks (i.e. no side effects) to tests
* ( ) Improve serialization for copying
* ( ) a.to_{x}() and a.from_{x}() should be perfect inverses → add to tests
* ( ) figure out how to add norg support to a fork of AppFlowy
* ( ) How to connect flutter app to backend? → Look at AppFlowy & its Private Cloud when it is released soon
* ( ) How to make planager server for AppFlowy?
* ( ) Django or Flask (or FastAPI) for first iteration?
* ( ) dead tree Rust book in German → roadmaps
* ( ) → Implement scheduling module in polyglot-projects, also corresponding visualizer
* ( ) TRACKING: manually via neorg, or via semaphore. One file per metric for easy tracking; move dates more than 30 days old to the old store (more efficient format?)
* ( ) [packaging.python.org/en/latest/guides/creating-and-discovering-plugins](https://packaging.python.org/en/latest/guides/creating-and-discovering-plugins/)
* Idea Sources, Inspirations, Libraries, Tools, Dependencies

    Personal Kanban

    scheduling algorithm: what can Taskwarrior do? (builtin), per project and task: relative priority, temporal planning: deadlines in different levels: dream | want| should | must -> severity/goodness
* ( ) [kivy.org/doc/stable/guide/packaging-android.html](https://kivy.org/doc/stable/guide/packaging-android.html) (also suitable for desktop)

    possible to have app server and website server on same server VM?

    make cron task to update Notion?

    package AppFlowy as FlatPak

    change GTT to write only changed tasks / projects / days, but keep in-memory for speed (except backlog and done; unnecessary)

    crystalize gtt API, database format, object API

    GTT functionality: add project, edit project, edit task -> done to done DB, project from backlog, add to backlog, adjust task distribution: balanced|rollover|rigid, edit backlog item, project from backlog item, check validity & check data consistency (in memory & in database & between memory and database), exact & fuzzy search, TUI, export as SVG

    can a Kanban board be combined with my system -> integrate as a view of the tasks

    which cmoponents does my system need? what is their relationship to each other?

### Features TODO: CLEANUP

* ( ) Gantt chart (from Roadmaps spreadsheet)
  * Features
* ( ) support for different roadmaps, zipped together
* ( ) support for adding a project (e.g. book) with a list/range of sub-projects (e.g. chapters)
* ( ) even: evenly spaced until end date
* ( ) fixed: fixed spacing
* ( ) - [ ]  easy-to-use calendar data structure
* ( ) load-balancing by day:
* ( ) make small adjustments to move some tasks (sub-projects) from one
* ( ) day types (intense, light, etc)
* ( ) time estimation of task (optional upper/lower bounds)
* ( ) priority of task
* ( ) big rocks first - scheduled time blocks, around which everything else must fit
* ( ) - [ ]  Daily scheduler - algorithm to do it automatically using estimated duration and priority levels (both urgency and importance)
* ( ) Ability to navigate in all 4 directions
* ( ) switch to daily slice
* ( ) sortable by tags incl. priority and est. duration
* ( ) different adjustment modes when I fall behind or get ahead:
* ( ) rigid: push all bask by k days, with exceptions for locked elements
* ( ) compress: squish all items evenly together
* ( ) rollover: what is unfinished today gets added to tomorrow
* ( ) → default mode for each project
* ( ) vim-based navigation in the terminal
  * Features
* ( ) common vim keybindings to move around TUI
* ( ) shortcuts to navigate to links → open new terminal tab with book / notes editor, switch to new pre-configured workspace (rofi integration?)
* ( ) syncing and integration with Github / Nextcloud / Drive
  * Features
* ( ) Kanban board
  * Features
  * examples-see kanban section
* ( ) Calendar
  * Features
* ( ) Correspondence between all components
  * Features
* ( ) [notifications via telegram](https://core.telegram.org/bots/api)
  * Features
  * examples / to use
* ( ) [taskwarrior-telegram-bot](https://github.com/Ninlives/taskwarrior-telegram-bot)
* ( ) [tg-taskwarrior-bot](https://github.com/rhnvrm/tg-taskwarrior-bot)
* ( ) [telegram-taskwarrior](https://github.com/cedricbousmanne/telegram-taskwarrior)
* ( ) [ ]
* ( ) [notion integration](https://developers.notion.com/reference/intro)?
  * Features
* ( ) [syncthing.net](https://syncthing.net/)
