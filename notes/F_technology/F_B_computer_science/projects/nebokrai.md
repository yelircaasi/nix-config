# Nebokrai
## Design and Development Notes
→ make nebokrai usable as a plugin/integration for smos?

how to integrate appflowy into a system with taskwarrior, ganttouchthis, timewarrior, telegram, etc?

* Name ideas: nebokrai (horizon, +[consilium](https://en.wiktionary.org/wiki/consilium), ganttouchthis, taskifist, roadmapper)

Add daily (yesterday) review to tracking feature → circular feedback, as review requires editing declaration, but thisis a feature, rather than a bug or compromise

Include commands such as `nebokrai check` to ensure inputs and outputs are in a consistent state → add optimizations such as caching and using time last edited → make certain files read-only by all except nebokrai user

GTT: tui with typer? which dependencies? pure stdlib? -> integration with vit / taskw / taskwarrior -> later: rewrite in Rust?

* Twilio → SMS?
* Zapier?
* IRC?

* learn about plugin architecture - neovim, qutebrowser, anki, qtile, xplr, emacs, awesome, hilbish, vim, wezterm, kitty, other lua-configurable apps, etc

name ideas: teclado, accordo, keycritic

### Discord Discussion
* https://discord.com/channels/834325286664929280/877666474888675368/1222613062796705862
Can I workshop an idea with you people? Seems like as good a place as any
Vhyrro — 27/03/2024 19:28
yeah sure why not
yelircaasi — 27/03/2024 19:29
The basic idea, one I have sloppily prototyped in Python and am now re-writing in Haskell (because of course), is "pure functional personal planning and scheduling" 
Declare a calendar with ad hoc entries and (the interesting part) roadmaps consisting of projects consisting in turn of tasks. Then the program derives a plan (mapping task -> day) and from there a schedule (mapping task -> entry -> time) according to parameters declared, such as priority, blockers, and estimated min/normal/max time per task, fixedness/flexness etc.

This will be compatible with existing tools like neorg::gtd, taskwarrior, xit, etc. But the mechanism for enforcing coherence between long-term goals and day-to-day plans is something I haven't found elsewhere. And for a certain personality type (mine, but presumably not uncommon among programmers) this sort of thing helps a lot with motivation 
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
In my case I was thinking of a multidimensional calendar (https://julian.digital/2023/07/06/multi-layered-calendars/)
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
Yet another poor guy on nixos: https://github.com/nvim-neorg/neorg/issues/1342#issuecomment-2022690731
GitHub
Luarocks Issues Thread · Issue #1342 · nvim-neorg/neorg
If you're probably here you're either angry or you're sad :| The latest update, 8.0.0, has been a breaking change for users. This isn't a breaking change just because I felt like it...
Luarocks Issues Thread · Issue #1342 · nvim-neorg/neorg
yelircaasi — 27/03/2024 20:14
I'm absolutely a happy Nix user. But I admit that Python is not fully native on Nix. But to be fair, creating an FHS environment on NixOS is trivially easy, so the benefits outweigh the drawbacks for me. The only real pain point is the lack of static typing in Nix... imagine the kind of error messages you get in a language that is purely functional, strongly and dynamically typed, lazily evaluated, and lazily documented. It's what you'd expect :kek: 

And I still love it 
yelircaasi — 27/03/2024 20:17
I'd say any immutable system is good for a browser native. My main use case is being able to declare coherent colors and keybinds in one central location and interpolate them everywhere. Still a WIP, but I love it already 
pysan3 — 27/03/2024 20:17
Maybe it’s just that I don’t know enough nix
yelircaasi — 27/03/2024 20:19
I'm certainly not pretending to be an expert. Just an amateur skilled in the art of ethical plagiarism

## Notes to Sort
### Overall Notes - Sort
make signal-based or matrix-based apps for sending links to myself without email or notion → or use email client? XMPP, Matrix, SMTP, POP3, IMAP, IRC

CLI “Digital Assistant”

* Design Goals: Create a system that takes into account all obligations, goals, and values to optimally allocate time. Most importantly, this system should be:
        - purely functional: the same inputs will always result in the same outputs, with no side-effects
        - declarative: the entities.base (tasks, etc.) and settings declared provide a complete specification of my system; I say 'what' and the software tells me 'when'.
        - simple and intuitive to use
        - robust: when circumstances change, I can adjust the plans via the interface provided (as opposed to internal hacking) and carry on without problems
        - integrated: planager provides an all-encompassing system to keep all aspects of my life in order
        - simplifying: this tool should save me time and reduce my cognitive load, not become a distraction or an obstacle
* Additionally, my system must be:
        - reproducible - installable via Nix
        - all-encompassing
        - cross-device
        - self-syncing
        - well-defined
        - robust (able to deal dynamically with unforeseen circumstances)
        - hierarchical (goal broken into tasks, each of which can be recursively broken into tasks)
        - keyboard-driven
        - aesthetically pleasing
        - in keeping with the Second Brain framework
            
            C (Capture)
            
            O (Organise)
            
            D (Distill)
            
            E (Express)
            
        - integrated and internally consistent
* End result:
        - phone app (android or linux mobile) → Notion or Appflowy
        - phone notifications: from app or via Telegram or other
        - frontend in neovim using neorg.nvim
        - automatic (hook-driven) and encrypted sync between devices, sync server
        - features:
            - built on the .norg file format
            - basic tack tracking, functionality from taskwarrior → probably replicate without
            - roadmap-based task scheduling and adjustment, as supplied by ganttouchthis
            - automatic, configurable, and manually adjustable planning (15-minute blocks with sufficient flex time)
            - recurring tasks and routines (as given by current Telegram bot)
            - performance analytics and summaries
* Consituents
        - planager-core → divide into scheduling and tracking? implement in Rust, Haskell, Ocaml, Idris, Agda, or Purescript
        - planager-backend - serves -flutter, -frontend, -signal, -nvim?, -tui? → IHP, Obelisk, Yesod, or Warp?
        - planager-flutter - for Android app → alternative like Kivy or cross-platform Rust toolkit [Dioxus](https://dioxuslabs.com/), or Flutter Rust bridge?
        - planager-frontend
        - planager-signal → semaphore of signal-cli or signal-api-rest-api or signal-bot (java) or libsignal or signal-server?
            - requirements
                1. notify of start/end of schedule entries
                2. record (as response to prompts) status of tasks, including sub-items of routines
                3. 
        - planager.nvim - from nvim with Neorg, or as neorg module?
        - planager-tui - bubbletea, rich, textual, or Ratatui?
        - planager-django - prototying for backend → alternatives: flask, cherry-py, fastapi?
        - planager-sync
        - Old: Overall Project Structure
            - Databases - synced across server, phone, and desktop (backed up on Github/Google Drive/NextCloud?)
                - TW database
                - GTT JSON data
            - Hosted VM server Linode, Heroku, Digital Ocean, Replit…?)
                - GTT Engine
                - Scheduler (merge into GTT → planager - or include GTT as a dependency?)
                - recurring tasks and set routines
                - Tracker - food, fitness, etc.
                  - combining with scheduler and GTT into controller app?
                - Telegram Bot (or over way to send notifications)
                - Weekly Email Report
                - Sync between taskwarrior, GTT
                
            - Zapier Hooks?
            - Desktop GTT TUI
                
                communication with server
                
            - (inthe.am, Foreground App)
            - Taskwarrior
                
                TUI: Vit / taskwarrior-tui
                
                taskw for interaction with Python packages
                
            - Timewarrior
            - AppFlowy → accessible from Android and Linux
                - 
                - ‣
                - ‣
                - ‣ (?)
    - [ ] get Android build for AppFlowy working → https://github.com/AppFlowy-IO/AppFlowy/actions/runs/4582846778/jobs/8093324716
    - [ ] https://docs.flutter.dev/deployment/android
    - [ ] https://github.com/orgs/AppFlowy-IO/projects
    - [ ] eventually add vim keybindings (https://appflowy.gitbook.io/docs/essential-documentation/shortcuts)
                - ChatGPT on hosting
                    
                    AppFlowy is a web application, which means that you can use it on any device that has a web browser. To host it so that you can use it on your Android device and desktop, there are a few options:
                    
                    1. Host it on a server and access it through a web browser on your desktop and Android device: You can host AppFlowy on a server and access it through a web browser on your desktop or Android device. This way, you can use AppFlowy on any device that has a web browser.
                    2. Install a local server on your desktop and access it through a web browser on your desktop and Android device: You can install a local server on your desktop and access AppFlowy through a web browser on your desktop or Android device. This way, you can use AppFlowy on your desktop without an internet connection, and access it on your Android device through a local network.
                    3. Use a cloud-based service that allows you to host web applications: There are several cloud-based services, such as AWS, DigitalOcean, and Heroku, that allow you to host web applications. You can host AppFlowy on one of these services and access it through a web browser on your desktop or Android device. This way, you can use AppFlowy on any device that has a web browser, and you don't need to worry about managing a server.
                    
                    Regardless of which option you choose, it's important to make sure that you keep your AppFlowy account secure by using a strong and unique password, and enabling two-factor authentication if possible.
                    
                
                search “hosting” https://discord.com/channels/903549834160635914/903553722804748309
                
            - advice
                
                Here are some best practices for planning, organizing, and tracking your time:
                
                1. Create a daily and/or weekly schedule: Make a list of tasks or activities that you need to complete for each day or week. Prioritize the most important tasks and schedule them during your most productive time of the day.
                2. Use a task management system: Choose a task management tool that works for you, such as a to-do list app or a project management tool. This will help you keep track of your tasks and ensure you don't miss any deadlines.
                3. Block out time for focused work: Schedule uninterrupted time for work that requires your full concentration. Use this time to complete tasks that require your full attention, and avoid distractions like social media and email.
                4. Take regular breaks: Taking breaks helps you recharge and stay focused. Try the Pomodoro technique, which involves working for 25 minutes and taking a 5-minute break, then repeating this cycle.
                5. Use a time tracker: Track your time to see where you're spending it. This will help you identify time-wasting activities and areas where you can improve your productivity.
                6. Review your progress regularly: Take time at the end of each day or week to review your progress. Celebrate your successes, identify areas for improvement, and adjust your schedule and tasks as necessary.
                7. Be flexible: No matter how well you plan, unexpected things will always come up. Be flexible and willing to adjust your schedule and tasks as needed to accommodate these changes.
                
                Remember, finding a system that works for you may take some trial and error. Experiment with different tools and techniques until you find what works best for you.
                
            - 
    - Miscellaneous
        - add/edit projects & tasks in popup, in command line, or in .norg file
    - input → output principle:
        - routines, projects, and settings as input, schedule & summary statistics as output
        - schedule + tracking as input → log and performance metrics as output
    

### Planning
    
    - Planning Features
        - day maximum (from calendar) and rollover when this max is exceeded
        - use of priority
        - respecting precedence requirements (dependency of one task on another)
    - Planning Algorithm (Vanilla):
        1. get all tasks (via roadmaps
    
### Tasks
    
    - Task definition entry points:
        - nvim
        - command line
        - Notion (check API and pull following trigger)
    - Task definition types:
        - from project creation
        - from project editing
        - manual add
    
### Scheduling
    
    calendar
     is direct parent of schedules, containing appointments and day 
    parameters -> calendar folder containing a file for each day
    
    adhoc is counterpart to plan, containing tasks (but one-off, non-derivable) -> adhoc folder containing a file for each day
    
    - Scheduling Features
        - fixed entries (x.ismovable)
        - ordering of entries (x.order)
        - iterative compression according to priority
        - category blocks and entry categories:
            - strict: work task only during blocked work hours
            - non-strict: work task goes to work if available, otherwise scheduled as a normal task
        - rewrite ad hoc file format to allow task specification by names (or other attribute, perhaps) → include fuzzy search with minimum string similarity (?) for name & other attributes
        - TODO: make it so that fixed events can also be resized
        - use name optionally instead of .block attribute?
        - fix entry adding to allow for ‘flow’ around fixed items
        - implement ‘snapping’ logic when the gap between tasks is small
        - how to measure performance and execution time, visualizing each function call?
        - move some functions from …algorithms.scheduling into the Schedule class ✓
        
        fixed entries: `e.ismutable == False`
        
    - Scheduling and prioritization
        - blocks added automatically: routines and recurring tasks
        - blocks added manually (weekly and daily planning)
        - automatic filling in of tasks according to algorithm
        - manual editing of task schedulng
    - Scheduling Algorithm (Vanilla)
        
        High-level description:
        
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
        
    - Entry adding test cases
    - [ ] empty
    - [ ] adding movable over empty
    - [ ] adding immovable over empty
    - [ ] add movable over empty, near other task, forcing snap: movable before movable,
    - [ ] add movable over empty, near other task, forcing snap: movable after movable
    - [ ] add movable over empty, near other task, forcing snap: movable on movable
    - [ ] add movable over empty, near other task, forcing snap: immovable before movable
    - [ ] add movable over empty, near other task, forcing snap: immovable after movable
    - [ ] add movable over empty, near other task, forcing snap: immovable on movable
    - [ ] - [ ]  add immovable over empty, near other task, forcing snap: movable before movable,
    - [ ] add immovable over empty, near other task, forcing snap: movable after movable
    - [ ] add immovable over empty, near other task, forcing snap: movable on movable
    - [ ] add immovable over empty, near other task, forcing snap: immovable before movable
    - [ ] add immovable over empty, near other task, forcing snap: immovable after movable
    - [ ] add immovable over empty, near other task, forcing snap: immovable on movable
    - [ ] - [ ]  add movable over empty, near other task, forcing no snap: movable before movable,
    - [ ] add movable over empty, near other task, forcing no snap: movable after movable
    - [ ] add movable over empty, near other task, forcing no snap: movable on movable
    - [ ] add movable over empty, near other task, forcing no snap: immovable before movable
    - [ ] add movable over empty, near other task, forcing no snap: immovable after movable
    - [ ] add movable over empty, near other task, forcing no snap: immovable on movable
    - [ ] - [ ]  add immovable over empty, near other task, forcing no snap: movable before movable,
    - [ ] add immovable over empty, near other task, forcing no snap: movable after movable
    - [ ] add immovable over empty, near other task, forcing no snap: movable on movable
    - [ ] add immovable over empty, near other task, forcing no snap: immovable before movable
    - [ ] add immovable over empty, near other task, forcing no snap: immovable after movable
    - [ ] add immovable over empty, near other task, forcing no snap: immovable on movable
    - [ ] - [ ]  add movable over movable, near other task, forcing snap: movable before movable,
    - [ ] add movable over movable near other task, forcing snap: movable after movable
    - [ ] add movable over movable near other task, forcing snap: movable on movable
    - [ ] add movable over movable near other task, forcing snap: immovable before movable
    - [ ] add movable over movable near other task, forcing snap: immovable after movable
    - [ ] add movable over movable near other task, forcing snap: immovable on movable
    - [ ] - [ ]  add immovable over movable near other task, forcing snap: movable before movable,
    - [ ] add immovable over movable near other task, forcing snap: movable after movable
    - [ ] add immovable over movable near other task, forcing snap: movable on movable
    - [ ] add immovable over movable near other task, forcing snap: immovable before movable
    - [ ] add immovable over movable near other task, forcing snap: immovable after movable
    - [ ] add immovable over movable near other task, forcing snap: immovable on movable
    - [ ] - [ ]  add movable over movable near other task, forcing no snap: movable before movable,
    - [ ] add movable over movable near other task, forcing no snap: movable after movable
    - [ ] add movable over movable near other task, forcing no snap: movable on movable
    - [ ] add movable over movable near other task, forcing no snap: immovable before movable
    - [ ] add movable over movable near other task, forcing no snap: immovable after movable
    - [ ] add movable over movable near other task, forcing no snap: immovable on movable
    - [ ] - [ ]  add immovable over movable near other task, forcing no snap: movable before movable,
    - [ ] add immovable over movable near other task, forcing no snap: movable after movable
    - [ ] add immovable over movable near other task, forcing no snap: movable on movable
    - [ ] add immovable over movable near other task, forcing no snap: immovable before movable
    - [ ] add immovable over movable near other task, forcing no snap: immovable after movable
    - [ ] add immovable over movable near other task, forcing no snap: immovable on movable
    - [ ] - [ ]  add movable over immovable, near other task, forcing snap: movable before movable,
    - [ ] add movable over immovable near other task, forcing snap: movable after movable
    - [ ] add movable over immovable near other task, forcing snap: movable on movable
    - [ ] add movable over immovable near other task, forcing snap: immovable before movable
    - [ ] add movable over immovable near other task, forcing snap: immovable after movable
    - [ ] add movable over immovable near other task, forcing snap: immovable on movable
    - [ ] - [ ]  add immovable over immovable near other task, forcing snap: movable before movable,
    - [ ] add immovable over immovable near other task, forcing snap: movable after movable
    - [ ] add immovable over immovable near other task, forcing snap: movable on movable
    - [ ] add immovable over immovable near other task, forcing snap: immovable before movable
    - [ ] add immovable over immovable near other task, forcing snap: immovable after movable
    - [ ] add immovable over immovable near other task, forcing snap: immovable on movable
    - [ ] - [ ]  add movable over immovable near other task, forcing no snap: movable before movable,
    - [ ] add movable over immovable near other task, forcing no snap: movable after movable
    - [ ] add movable over immovable near other task, forcing no snap: movable on movable
    - [ ] add movable over immovable near other task, forcing no snap: immovable before movable
    - [ ] add movable over immovable near other task, forcing no snap: immovable after movable
    - [ ] add movable over immovable near other task, forcing no snap: immovable on movable
    - [ ] - [ ]  add immovable over immovable near other task, forcing no snap: movable before movable,
    - [ ] add immovable over immovable near other task, forcing no snap: movable after movable
    - [ ] add immovable over immovable near other task, forcing no snap: movable on movable
    - [ ] add immovable over immovable near other task, forcing no snap: immovable before movable
    - [ ] add immovable over immovable near other task, forcing no snap: immovable after movable
    - [ ] add immovable over immovable near other task, forcing no snap: immovable on movable
    - [ ] .
    - [ ] impossible: any over saturated day
    - [ ] impossible: any on day without enough room
    - [ ] impossible: immovable on top of immovable
    - [ ] 

#### Scheduler Notes
    
    
    Scheduler
* https://medium.com/@thegapfill/productivity-article-eb1df36d4dbf ***
* https://www.researchgate.net/publication/341780522_Task_Scheduling_in_Cloud_Computing_A_Survey/link/5f37b224458515b729221960/download 
* [Algorithms for Scheduling Problems](http://library.lol/main/5E75C506698832A19DCF51915EA014A4) 
* https://www.researchgate.net/publication/337148981_Planning_and_scheduling_problems_of_production_systems_review_classification_and_opportunities → file:///home/isaac/Downloads/R5_IJPQM_05November19_IBNMAJDOUZINEB_PlanningandschedulingproblemsofproductionsystemsReview.pdf 
* https://www.tutorialspoint.com/operating_system/os_process_scheduling_algorithms.htm 
* https://www.academia.edu/6718638/Scheduling_problems_An_overview 
* [Types of Task Scheduling Algorithms in Cloud Computing Environment](https://www.intechopen.com/chapters/71902)
* [Natural Intelligence for Scheduling, Planning and Packing Problems *[1 ed.]](http://libgen.rs/book/index.php?md5=9BC05329D09109CF82B0FB7386889764)* 
* [Decision Analysis, Location Models, and Scheduling Problems *[1 ed.]*](http://libgen.rs/book/index.php?md5=805513A81A24B94975F802FE4F3C2ECF)
* [Constraint-Based Scheduling: Applying Constraint Programming to Scheduling Problems *[1 ed.]*](http://libgen.rs/book/index.php?md5=9D333284F1AF9D661620AD274CF113B7)
* https://web-static.stern.nyu.edu/om/faculty/pinedo/scheduling/sched.pdf 
* https://www.javatpoint.com/activity-or-task-scheduling-problem 
* https://teamdoapp.com/inspiration/increase-productivity-with-effective-task-scheduling/ 
* [Machine learning and optimization for production rescheduling in Industry 4.0 https://link.springer.com/article/10.1007/s00170-020-05850-5](https://link.springer.com/article/10.1007/s00170-020-05850-5) 
    


### Entries
    
    - Ways to add an entry
        1. from calendar
        2. from plan via explicit declaration (project file)
        3. from plan, without explicit declaration (roadmap file)
        4. from ad hoc
        5. from routines
    - Entry Adding
        
        An Entry object can be added to a Schedule object from one of 5 origins:
        
        - from Calendar (base schedules)
        - from plan via explicit declaration in project file
        - from plan via project expansion from roadmap file
        - from AdHoc, from adhoc file
        - from Routines, from routines file
    
### Planning and Scheduling (shared)
    
    - Project and Task Dependency Logic
        - use only `.after` attribute; `.before` superfluous
        - add `.tmpdate` (or maybe `.placeholder_date`) attribute to tasks for sorting; default NullDate to allow for easy complex comparisons
        - 2-pass approach for planning: first regular planning to assign tmpdate, then adjust for dependencies
        - use special sorting (`__gt__ , __lt__, __ge__, __le__`) that first looks at `.after`, then at `.tmpdate`
        
        Extension: Norg links allow me to specify sequential dependency relationships between tasks
        
    - Blocking Logic
        - blocks like 'work' that other smaller, more specific tasks can be scheduled on top of
        - blocks come from Calendar, AdHoc, Routines
        - potentially also from regular (roadmap-originating) tasks
        - used to 'collapse' durations together for planning and scheduling
    - Task 'Stacking'
        - combining tasks that can be done simultaneously, such as listening to a podcast on the way home
        - also allows 'time collapsing' during planning, scheduling with require something new and custom
    - Cases:
    - [ ] plan overfull (error)
    - [ ] plan fits exactly
    - [ ] plan underfull
    - [ ] rollover required (with priorities)
    - [ ] with dependencies
    
### Tracking


* Habits to track:
    - all foods (with times)
    - time breaking fast
    - last time eating
    - bool: entirely plant-based? entirely non-processed?
    - food score
    - cold shower
    - daily walk (5x/week)
    - run (5x/week) - with recorded data
    - sets of pushups
    - sets of pullups
    - stretching
    - wisdom literature
    - last use of phone
    - number of texts sent
    - emails clean? (both) bookmarks clean?
    - journal
    - cleanliness & orderliness of apartment
    - bool: mast.
    - time doing absolutely nothing
    - quality of meditation
    - something new I learned
    - which languages I used
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


### Sync, Multi-Device, Etc.


* sync
    - preferred method: manual sync


* Features for quick updates
    - object dependency graph to only make necessary changes, depending on what has changed
    - automatic patch generation from edits → ‘reverse engineering’ of effects, almost analogous to backpropagation of desired changes
    
    Use norg link structure to track which files need to be updated?
    
    Declarative schedule generation: 
    
    - directed graph for updates, acyclical for full recompute, but not necessarily acyclical for some updates: lower-level (e.g. schedule, task) edit may trigger necessary change at parent levels (tasks, projects)
* Storage
    - What is stored where and in which format?
        1. taskwarrior database
        2. notion frontend
        3. ganttouchthis store - on desktop, mobile, and server, with git backup
    - consistent & readable storage format → seamless integration with .norg files
* Hooks
    
    hooks to trigger updates: https://neovim.io/doc/user/autocmd.html#events  
    
    - What are the hooks? I.e., which events trigger a sync from which component to which component?
        1. planning session defines projects, which are parsed into tasks and scheduled
        2. tasks are added to taskwarrior and synced to the server
        3. server sends mobile notifications according to schedule
        4. opening a relevant norg file results in pulling tasks from the taskwarrior database
        5. writing a tracked norg file results in pushing tasks back to the taskwarrior database and a sync with the server
        6. editing elsewhere triggers a sync with Notion; pulling from another app triggers a sync pulling from Notion, with optional manual trigger to sync with Notion


### Signal Integration


* Signal module:
    
    dependencies:
    
    - planager.tracking
    - planager.schedule
    - semaphore (Python package)
* Signal bot requirements → different chats or all-in-one?
    1. notify of start/end of schedule entries
    2. record (as response to prompts) status of tasks, incl. sub-items of routines
    3. accept request to edit declaration files, then edit & trigger recompute
    4. display (upon query) some (subset of) roadmap, plan, task, schedule, etc.
    5. show tracker information: streaks, percentage, habit strength, progress toward goals, …


### To Sort
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


* nebokrai: add subcommands: track, blame (tool to show origin of some aspect of derived result), edit, add (interactive), sync, dashboard, dryrun <subcommand>, revert -> make (where appropriate) CLI and TUI (= interactive) versions of subcommands


* nebokrai idea: "sacred" time blocks for flow


* tracking: collect texting statistics


* self-daily: presentation about yesterday and plans for today



### Old Notes
    - old: Entity Types
        - roadmap: a 'master plan' for some area such as "Rust programing language" or "muscular flexibility" involving multiple steps or projects
        - project: a self-contained unit of work that can be broken down into smaller parts, such as a book to read or a coding project
        - task: a small, atomic unit of work, ideally one that can be completed in less than 120 minutes; can be recurring or one-time
        - sequences: an alias for a list of tasks which are always to be performed together (typically sequentially), such as a morning or evening routine; handled identically to a task
        - option set: a group of alternatives, from which I select one (or more); handled identically to a task
    - Old adjustment types
        
        ```python
        
        class AdjustmentType(Enum):
            AUTO = 0  # methods figure it out, based on priority and properties
            CLIP = 1  # higher-priority entry takes precedence and lower-priority activity makes way
            SHIFT = 2  #
            COMPRESS = 3  #
            COMPROMISE = 4  #
            DISPLACE = 5  #
        ```
* https://github.com/AppFlowy-IO/AppFlowy/issues/3125 


* [ ] Which conversions are necessary?
* [ ] Which modules do I need to write? How can I minimize redundancies while maintaining flexibility and extensibility?
* [ ] Which off-the-shelf solutions exist already?
* [ ] rofi integration
* [ ] polybar integration
* [ ] What will be the APIs of the modules?
* [ ] Which programming languages will I use for each module?
* [ ] try to run signald in a docker container
* [ ] read semaphore docs and read through examples
* [ ] → eventually add neorg - anki interface
* [ ] Add purity checks (i.e. no side effects) to tests
* [ ] Improve serialization for copying
* [ ] a.to_<x>() and a.from_<x>() should be perfect inverses → add to tests
* [ ] figure out how to add norg support to a fork of AppFlowy
* [ ] How to connect flutter app to backend? → Look at AppFlowy & its Private Cloud when it is released soon
* [ ] How to make planager server for AppFlowy?
* [ ] Django or Flask (or FastAPI) for first iteration?
* [ ] dead tree Rust book in German → roadmaps
* [ ] → Implement scheduling module in polyglot-projects, also corresponding visualizer
* [ ] TRACKING: manually via neorg, or via semaphore. One file per metric for easy tracking; move dates more than 30 days old to the old store (more efficient format?)
* [ ] https://packaging.python.org/en/latest/guides/creating-and-discovering-plugins/
* Idea Sources, Inspirations, Libraries, Tools, Dependencies

    Personal Kanban
    
    scheduling algorithm: what can Taskwarrior do? (builtin), per project and task: relative priority, temporal planning: deadlines in different levels: dream | want| should | must -> severity/goodness
* https://kivy.org/doc/stable/guide/packaging-android.html (also suitable for desktop)
    
    possible to have app server and website server on same server VM?
    
    make cron task to update Notion?
    
    package AppFlowy as FlatPak
    
    change GTT to write only changed tasks / projects / days, but keep in-memory for speed (except backlog and done; unnecessary)
    
    crystalize gtt API, database format, object API
    
    GTT functionality: add project, edit project, edit task -> done to done DB, project from backlog, add to backlog, adjust task distribution: balanced|rollover|rigid, edit backlog item, project from backlog item, check validity & check data consistency (in memory & in database & between memory and database), exact & fuzzy search, TUI, export as SVG
    
    can a Kanban board be combined with my system -> integrate as a view of the tasks
    
    which cmoponents does my system need? what is their relationship to each other?

### Features:
* [ ] Gantt chart (from Roadmaps spreadsheet) → example: [task-gantt](https://github.com/8ware/task-gantt)
    - Features
* [ ] support for different roadmaps, zipped together
* [ ] support for adding a project (e.g. book) with a list/range of sub-projects (e.g. chapters)
* [ ] even: evenly spaced until end date
* [ ] fixed: fixed spacing
* [ ] - [ ]  easy-to-use calendar data structure
* [ ] load-balancing by day:
* [ ] make small adjustments to move some tasks (sub-projects) from one
* [ ] day types (intense, light, etc)
* [ ] time estimation of task (optional upper/lower bounds)
* [ ] priority of task
* [ ] big rocks first - scheduled time blocks, around which everything else must fit
* [ ] - [ ]  Daily scheduler - algorithm to do it automatically using estimated duration and priority levels (both urgency and importance)
* [ ] Ability to navigate in all 4 directions
* [ ] switch to daily slice
* [ ] sortable by tags incl. priority and est. duration
* [ ] different adjustment modes when I fall behind or get ahead:
* [ ] rigid: push all bask by k days, with exceptions for locked elements
* [ ] compress: squish all items evenly together
* [ ] rollover: what is unfinished today gets added to tomorrow
* [ ] → default mode for each project
* [ ] vim-based navigation in the terminal
    - Features
* [ ] common vim keybindings to move around TUI
* [ ] shortcuts to navigate to links → open new terminal tab with book / notes editor, switch to new pre-configured workspace (rofi integration?)
* [ ] syncing and integration with Github / Nextcloud / Drive
    - Features
* [ ] Kanban board
    - Features
    - examples-see kanban section

* [ ] Calendar
    - Features
* [ ] Correspondence between all components
    - Features
* [ ] [Notifications via Telegram](https://core.telegram.org/bots/api)
    - Features
    - examples / to use
* [ ] https://github.com/Ninlives/taskwarrior-telegram-bot
* [ ] https://github.com/rhnvrm/tg-taskwarrior-bot
* [ ] https://github.com/cedricbousmanne/telegram-taskwarrior
* [ ] 
* [ ] [Notion integration](https://developers.notion.com/reference/intro)?
    - Features
* https://syncthing.net/

### Roadmap
* Become intimately familiar with the ins and outs of taskwarrior
    1. read the docs
    2. use in Docker container
    3. read the codebase
* Become intimately familiar with the ins and out of neorg and its modules
    1. read the docs (wiki)
    2. use in Docker container
    3. read the codebase
    4. read the additional module code as well
* Become intimately familiar with the structure of lua plugins in neovim
    1. https://neovim.io/doc/user/ 
    2. read https://neovim.io/doc/user/develop.html 
    3. skim https://github.com/neovim/neovim/wiki#developers 
    4. browse https://sourcegraph.com/github.com/neovim/neovim 
    5. pick 6 interesting plugins and review their code  

* done
* [x]  rename universe to Planager
* [x]  add `order` attribute to Entry, such that tasks can be ordered temporally indgependently of priority
* [x]  fix attributes of routines (such as maxtime) for proper initialization
* [x]  major refactoring to separate by entity types and remove plurals from module names
* [x]  clean up imports to make relative wherever possible
* [x]  fix all mypy errors
* [x]  visualize with [pydeps](https://github.com/thebjorn/pydeps) and refactor accordingly
* [x]  fix id to be string
* [x]  remove ambiguity (**kwargs) in norg reading
* [x]  migrate List[Entry] to Entries
* [x]  move internal norg dicts to classes for better verification
* [x]  create norg visualization via `__repr__`
* [x]  add support for norg task status (for completed)
* [x]  add blocking logic
* [x]  calendar is direct parent of schedules, containing entries and day parameters -> calendar folder containing a file for each day (& update tests)
* [x]  fix config handling → cleaner function signatures, less clutter
* [x]  refactor Schedule
    - [x]  extract logical scheduling methods and make them pure functions
    - [x]  refactor said functions
* [x]  write minimal, functional CLI
* [x]  add tracking functionality
    - [x]  write prompting functions
    - [x]  write item tracking class for each type, including json serialization and deserialization    
    - [x]  time    
    - [x]  boolean    
    - [x]  natural    
    - [x]  natural sequence    
    - [x]  composite        
    - [x]  define which types of composite to support and test
        
    - [x]  Workout: ?
        
    - [x]  Food: ?
        
    - [x]  any others?
    - [x]  add method to create tracker for each routine item, including json serialization and deserialization
    - [x]  add submenu to `planager track` such that not everything needs to be tracked at once → support for partial and incremental tracking
* [x]  add colorful logging for easier debugging
* [x]  find script to convert ansi output to html
* [ ] https://metacpan.org/release/NUFFIN/HTML-FromANSI-2.03
* [ ] https://github.com/theZiz/aha
    - [x]  https://github.com/pycontribs/ansi2html
* [x]  refactor plan gantt code in Planager - make run as a method of plan, taking an iterable of projects - just re-write the whole thing?
* [x]  write code to read plan and schedule from derivation.json → will make development much easier → instead just overhaul entire serde for everything, with i-roved dictionary types
* [x]  add coverage plugin to pytest
* [x]  rename to nebokrai
* [x]  write watertight json schemata
* [x]  get all check-jsonschema calls to pass
* [x]  write tests for the schemata
* [x]  remove old prompt_functions file
* [x]  organize CLI commands in hierarchical families → declaration …, derivation … (view, edit, add), validate https://docs.python.org/3/library/argparse.html#sub-commands
* [x]  switch from argparse to sys.argv
* [x]  add “summary” command to get a good overview of all
* [ ] ~~add parsim properties to entities for logging and debugging~~- [ ]  ~~add types for CLI to ensure coverage and correctness~~- [ ]  ~~add declaration class for easy interaction with declaration JSON files~~
* [ ] calendar
* [ ] deserialization
* [ ] serialization
* [ ] editing
* [ ] search
* [ ] …- [ ]  ~~do the same as above, but for derivation~~- [ ]  ~~same as above for tracking~~- [ ]  ~~add help command~~
* [x]  add command aliases
* [ ] ~~test all possible command-line options with dummy output~~- [ ]  ~~prompt tests:~~
* [ ] config from dicts
* [ ] subitem
* [ ] components
* [ ] global
* [ ] default prompting tests
* [ ] tests with custom config options
* [ ] add convenient summaries of each entity
* [ ] move schemata to schemata folder in root (used for both test data and local nebokrai data)- [ ]  write tests for pythonnative data validation
* [ ] write tests for prompting
* [ ] write tests for IO and serde
* [ ] start over with data files → easier to test and devlop; remove accumulated old bloat - need to make basic declaration through the end of the year
* [ ] write code to read in logs (for tracking)- [ ]  schema validator for json → make sure that same keys are present everywhere; create report when this is not the case
* [ ] Refactor different tracking items into a single class - DRY, much simpler to maintain, more powerful and flexible
* [ ] Improve reprs of different levels (repr, str, pretty, summary, detail) to make debugging and development easier
* [ ] Pull out common repr functionality into utils
* [ ] Plan
* [ ] Schedules
* [ ] Calendar
* [ ] Entry
* [ ] Task
* [ ] Roadmaps
* [ ] Tasks
* [ ] Tracker
* [ ] Entries
* [ ] Project
* [ ] Roadmap
* [ ] Projects
* [ ] Roadmaps
* [ ] Add informative print statements to planning and scheduling, such that the entire process is observable
* [x]  Plan
* [x]  Tasks
* [x]  add_tasks
* [x]  update_plan
* [ ] Schedule
* [ ] write basic, minimal tests for opening, planning, scheduling, and tracking
* [ ] add LaTeX generation for plans and schedules!!!- [ ]  add beautiful image code generation for logs
* [ ] revise declaration and get back in the saddle
* [ ] add export and import for:
* [ ] * https://github.com/jotaen/xit https://xit.jotaen.net/
* [ ] .ics (calendar standard) → https://github.com/collective/icalendar, https://github.com/ics-py/ics-py
* [ ] CalDav https://pypi.org/project/khalorg/
* [ ] neorg
* [ ] orgmode
* [ ] todo.txt
* [ ] [taskwarrior JSON](https://github.com/GothenburgBitFactory/taskwarrior/blob/develop/doc/devel/rfcs/task.md)
* [ ] jira (via API)
* [ ] taskell
* [ ] appflowy (markdown)
* [ ] todoman
* [ ] khal etc.- [ ]  make separate (importable by overarching master package) TUI editor with textual for the declaration.json file. Should be easy and enjoyable to use
* [ ] full test suite
* [ ] native compilation in Python
* [ ] get stable and operational in Python, polish by dogfooding
* [ ] rewrite in rust
* [ ] cross-compile for arm7
* [ ] deploy on home server
* [ ] make home server accessible from outside network
* old - go through and sort!
* [ ] Test creating executable using https://github.com/exaloop/codon https://docs.exaloop.io/codon/ ; alternatively look at using https://github.com/cython/cython [docs](https://cython.readthedocs.io/en/latest/index.html)
* [read](https://blog.paperspace.com/boosting-python-scripts-cython/) (or competitor to cython?)
* [ ] create subsequent steps related to creating a compiled executable app
* [ ] add blocks and make work with scheduling
* [ ] serialization of plan & schedules to derivation.json -> CLI supporting scheduling from saved plan, schedule next k days
* [ ] thorough refactor 1
* [ ] thorough refactor 2
* [ ] develop tracker class
* [ ] full (albeit minimal) working CLI
* [ ] make entries with categories only add to desired blocks (notably for work tasks)
* [ ] add earliest and latest dates to tasks and entries - for scheduling
* [ ] add earliest and latest times for scheduling
* [ ] add json writers (& update tests)
* [ ] write logger (& update tests)
* [ ] add logging to entire library (& update tests)
* [ ] get planning working as expected (& update tests)
* [ ] get scheduling working as expected (& update tests)
* [ ] make adhoc counterpart to plan, containing tasks (but one-off, non-derivable) -> adhoc folder containing a file for each day (& update tests)
* [ ] add tracking module mvp (& update tests)
* [ ] Tracking functionality
* [ ] str and repr for DefaultDay
* [ ] Basic tests for adding entries to schedule
* [ ] advanced adding and deleting functionality
* [ ] write signal package for messaging (& update tests)
* [ ] Read https://hamberg.no/gtd, https://gettingthingsdone.com/what-is-gtd/, https://en.wikipedia.org/wiki/Getting_Things_Done
* [ ] Map out [structure of system](https://www.notion.so/Design-and-Architecture-Notes-1a0633919e2e45838e3794e4aad4bee4?pvs=21)

## Inspirations
### Tier 1 - Phenomenal
* https://docs.smos.online/ $$$$$$$$$ https://github.com/NorfairKing/smos
* [Intray: An Inbox system](https://intray.cs-syd.eu/) [github](https://github.com/NorfairKing/intray)
* [Tickler: A Tickler system](https://tickler.cs-syd.eu/) [github](https://github.com/NorfairKing/tickler)
### Tier 2 - Quite Excellent

### Tier 3 - Very Good
* https://github.com/Q1CHENL/todoism
### Tier 9 - Maybe Someday

### Sort
#### food
* [kitchenowl](https://github.com/TomBursch/kitchenowl) 
* [nextcloud-cookbook](https://github.com/lneugebauer/nextcloud-cookbook) 
* [openfoodfacts-server](https://github.com/openfoodfacts/openfoodfacts-server) 
* [recipesage](https://github.com/julianpoy/recipesage) 
#### discussion
* https://discord.com/channels/834325286664929280/877666474888675368/1222613062796705862
#### →
* ⇒ https://wiki.archlinux.org/title/List_of_applications/Other
* https://orgmode.org/worg/org-contrib/
* https://medevel.com/tag/productivity/  **
* https://github.com/NorfairKing
* [I haven’t found a decent ToDo list with this killer feature: dependencies. I wan… | Hacker News](https://news.ycombinator.com/item?id=11352791) https://news.ycombinator.com/item?id=11352791
* [Stuff I did - The stuff I do](https://www.statox.fr/projects/#) https://www.statox.fr/projects/#
#### pomodoro
* https://github.com/pickfire/spt
* https://github.com/jakethekoenig/tmux-pom ?
* https://github.com/dbinagi/nomodoro
* https://gist.github.com/tomordonez/afc9633c4c9a8f649155bf083ef040cf#file-pomodorotimer-py
#### mobile
* https://github.com/wireapp/lithium  https://wire.com/en
* https://github.com/d-k-bo/gotify-rs
* https://github.com/gotify/server
* https://keep.imfreedom.org/pidgin/pidgin/
* https://github.com/tinode/chat
* https://github.com/twilio-labs/receptionist-bot-rs
* https://slack-rust.abdolence.dev/
* https://www.pushbits.io/
* https://matrix.org/ecosystem/bridges/signal/
* https://github.com/matrix-org/matrix-rust-sdk#readme
* https://matrix.org/ecosystem/sdks/
* https://f-droid.org/packages/com.github.gotify/
* https://matrix.org/ecosystem/integrations/
* https://gitlab.com/jpypi/rustix
* https://gitlab.com/signald/signald
* https://signald.org/
* https://github.com/signalapp/libsignal
* https://github.com/AsamK/signal-cli
* https://github.com/jquku/Matrix-Chatbot
* https://github.com/ergochat/ergo
* https://sopel.chat/
* https://libera.chat/guides/clients
* https://f-droid.org/packages/io.mrarm.irc/
* https://github.com/topics/irc-bot
* https://sr.ht/~emersion/gamja/
* https://sr.ht/~emersion/goguma/
* https://github.com/bgregos/foreground
* https://github.com/lwesterhof/semaphore
* https://github.com/matrix-org/matrix-hookshot
* https://play.google.com/store/apps/details?id=com.countercultured.irc4android
* https://f-droid.org/packages/com.madlonkay.orgro/ → make for neorg
* https://github.com/simplex-chat/simplex-chat/blob/stable/apps/simplex-bot-advanced/Main.hs
* https://github.com/teloxide/teloxide
* SchildiChat https://f-droid.org/packages/de.spiritcroc.riotx/
* https://github.com/simplex-chat/simplex-chat/tree/stable/apps
* https://simplex.chat/blog/20231125-simplex-chat-v5-4-link-mobile-desktop-quantum-resistant-better-groups.html
* Best Secure Messaging App | FBI Document Leaked - YouTube https://www.youtube.com/watch?v=wj-aR96FOA0&pp=ygUPU2lnbmFsIGNoYXQgYm90
* (Telegram inline keyboard? Add [custom keyboard](https://www.google.com/search?q=add+custom+keyboard+to+android&sxsrf=APwXEde_qAYevpIXgyBDpVjjtVpsAK4Huw:1682273314975&source=lnt&tbs=qdr:y&sa=X&ved=2ahUKEwjvrOq6zMD-AhUCsaQKHZB0BsEQpwV6BAgBEAs&biw=1717&bih=845&dpr=1) for Telegram to include slash and numbers on basic keyboard? → not highest priority)
#### tw
* Elevate Your Task Management With Ease - YouTube https://www.youtube.com/watch?v=U4pGz4KI1J0&t=12s&pp=2AEMkAIB
* [ ]  https://github.com/vit-project/vit
* [syncall/readme-tw-notion.md at master · bergercookie/syncall](https://github.com/bergercookie/syncall/blob/master/readme-tw-notion.md)
* https://f-droid.org/packages/me.bgregos.brighttask/
* [ ]  https://github.com/hugginsio/twig.nvim , also a nvim plugin
* [Task management with Taskwarrior and Taskell](https://tallguyjenks.github.io/blog/task-management-with-taskwarrior-and-taskell.html)
#### webhooks etc
* https://github.com/adnanh/webhook
* https://www.reddit.com/r/Notion/comments/nd76ec/notion_api_webhooks/
#### habit
* https://github.com/schmee/habu
#### nvim
* [Live* Server plugin for *vim*/*nvim* : r/*neovim* - Reddit](https://www.reddit.com/r/neovim/comments/w86ash/live_server_plugin_for_vimnvim/)
* https://github.com/orenskl/pico-jvm
#### cli
* https://github.com/python-poetry/cleo
* https://rich.readthedocs.io/en/stable/introduction.html
* https://click.palletsprojects.com/en/8.1.x/  ← looks really good
* https://docs.python.org/3.11/library/argparse.html#module-argparse
* [Egnod/karakurt: Cookiecuttrer-template for python cli app](https://github.com/Egnod/karakurt)
* [10 Best Free and Open Source Command-Line Python Application Development Tools - LinuxLinks](https://www.linuxlinks.com/best-free-open-source-command-line-python-application-development-tools/)
#### tui
* [ ]  https://github.com/Textualize/textual
* → https://github.com/Textualize/textual/discussions/165
* [Curses Programming with Python — Python 3.11.2 documentation](https://docs.python.org/3/howto/curses.html)
* [Introduction - Textual](https://textual.textualize.io/)
* [How To Use VIT The Curses Based](https://www.youtube.com/watch?v=wY3DJVSWdeI&t=363s)
* [brick: A declarative terminal user interface library](https://hackage.haskell.org/package/brick)
* [curses — Terminal handling for character-cell displays — Python 3.11.2 documentation](https://docs.python.org/3/library/curses.html#module-curses)
* [curses (programming library) - Wikipedia](https://en.wikipedia.org/wiki/Curses_(programming_library))
* https://github.com/avelino/awesome-go#advanced-console-uis
#### gui
* https://develop.kde.org/frameworks/kirigami//
#### hosting
* https://dashboard.heroku.com/account heroku backup XY047RVTHX H0RYMIZ36C VTU7G4K6YO IMDP455R7S P7EN0W7BZP NDWZ0FMG1L ECTT2W4552 ZTICQNARDY 7SUJG65VN8 J1B78S0QOR
* [Install Ubuntu Server | Ubuntu](https://ubuntu.com/tutorials/install-ubuntu-server#6-choose-your-install)
#### doc formats
* https://github.com/chris48s/stage-left ([x]it)
#### matrix
* https://gitlab.com/jpypi/rustix
* https://github.com/poljar/matrix-nio
#### db, dvc
* [Welcome to TinyDB! — TinyDB 4.7.1 documentation](https://tinydb.readthedocs.io/en/latest/)
* [set up dvc with google drive - Google Search](https://www.google.com/search?client=firefox-b-d&q=set+up+dvc+with+google+drive)
* [msiemens/tinydb: TinyDB is a lightweight document oriented database optimized for your happiness :)](https://github.com/msiemens/tinydb)
* https://tinydb.readthedocs.io/en/latest/
#### web
* [SSH and GPG keys](https://github.com/settings/keys)
* https://github.com/adnanh/webhook
* [Block Elements - Wikipedia](https://en.wikipedia.org/wiki/Block_Elements)
* https://github.com/MahmoudNasser01/django_simple_notification
* http://snapframework.com/
* http://www.spock.li/
* https://www.yesodweb.com/
* https://hackage.haskell.org/package/warp
* http://www.servant.dev/
* https://haskell.dev/article/Building_web_applications_with_Haskell_A_beginners_guide.html
* https://www.happstack.com/
* https://www.haskell.org/haskellwiki/Web
* https://wiki.haskell.org/Web/Servers
* https://github.com/litehtml/litehtml
* https://www.npmjs.com/package/browser-sync
* [Is there a plugin for *live preview* my web projects on … - Reddit](https://www.reddit.com/r/neovim/comments/uzqx2i/is_there_a_plugin_for_live_preview_my_web/)
* [Introducing *live*command.*nvim*: *preview* the norm … - Reddit](https://www.reddit.com/r/neovim/comments/xx5hhp/introducing_livecommandnvim_preview_the_norm/)
* I use markdown-*preview*.*nvim* for getting a *live preview* when editing Markdown files. But is there something similar for web development?
* https://dev.to/fidelve/using-vim-as-your-main-editor-for-web-development-5a73
#### ? (apps)
* https://medevel.com/cuekeeper/ https://github.com/talex5/cuekeeper
* [ ]  https://github.com/klaudiosinani/taskbook
* [ ]  https://github.com/darrikonn/td-cli
* [Pricing - WakaTime](https://wakatime.com/pricing)
* https://sma.supermemo.wiki/#/
* [amiof/todo-list-: a todo list create with js and html & css](https://github.com/amiof/todo-list-)
* [Tinycare-Tui](https://www.reddit.com/r/golang/s/fVY4hoTMYY) https://github.com/DMcP89/tinycare-tui  https://www.reddit.com/r/golang/s/fVY4hoTMYY
* https://github.com/notwaldorf/tiny-care-terminal
* https://organice.200ok.ch/
* https://about.org-note.com/  https://github.com/artawower/orgnote
* https://f-droid.org/packages/com.mhss.app.mybrain/
* https://github.com/orgzly/orgzly-android
* https://tasks.org/  $$$$$$$$$
* [Taiga 30min Setup - Learn Taiga basics - Taiga Community](https://community.taiga.io/t/taiga-30min-setup/170)
* https://org-web.org/
* https://appwrite.io/
* https://anytype.io/ https://github.com/orgs/anyproto/repositories
* https://github.com/200ok-ch/organice https://organice.200ok.ch/
* nebokrai $$$$$$$$$ https://smos.online/
* [ ]  https://github.com/pimutils/todoman
* [johannesjo/super-productivity: Super Productivity is an advanced todo list app with integrated Timeboxing and time tracking capabilities. It also comes with integrations for Jira, Gitlab, GitHub and Open Project.](https://github.com/johannesjo/super-productivity)
* https://github.com/Nighty3098/FocuseSpace
* https://github.com/tools-life/taskwiki
* (productivity) https://github.com/matthiasn/lotti  $$$
* https://foambubble.github.io/foam/
#### misc software to use
* https://www.freedesktop.org/wiki/Software/dbus/
#### gantt
* [ ]  https://github.com/timeopochin/GanTTY
* [ ]  name idea: ganttstopme, ganttstopmenow
* [timeopochin/GanTTY: Project planning from the terminal](https://github.com/timeopochin/GanTTY)
* [ganttouchthis/LICENSE at main · yelircaasi/ganttouchthis](https://github.com/yelircaasi/ganttouchthis/blob/main/LICENSE)
* https://www.google.com/search?client=firefox-b-d&q=open+source+web+gantt+viewer
#### kanban
* [Lyaaaaaaaaaaaaaaa/Project_Kanban: A lightweight desktop software, under the MIT licence to create and manage your Kanbans boards for your personal projects](https://github.com/Lyaaaaaaaaaaaaaaa/Project_Kanban)
#### notes
* → example: https://github.com/Cvaniak/NoteSH
* [ ]  https://github.com/dnote/dnote
* [ ]  https://github.com/xwmx/nb
* [ ]  https://vhp.github.io/terminal_velocity/
* [ ]  https://notable.app/#features
* [ ]  https://onthesamepage.online/about
* [note templates](https://jacobzelko.com/08032021134232-notes-template/#example_of_actual_note)
* https://github.com/usememos/memos
* [ ]  https://github.com/xwmx/nb  ***
#### wiki
* https://github.com/brunocbr/zettel-composer
* [I Should Have Just Used Vimwiki From The Start](https://youtu.be/vBJj7YMVn6I)
* [VIMKipedia: Or How I Built My Second Brain Using Vim - YouTube](https://www.youtube.com/watch?v=q80hXvorl0o)
* search: vimwiki for android
* [TiddlyWiki — a non-linear personal web notebook](https://tiddlywiki.com/)
* [zadam/trilium: Build your personal knowledge base with Trilium Notes](https://github.com/zadam/trilium)
* https://fortelabs.com/blog/test-driving-a-new-generation-of-second-brain-apps-obsidian-tana-and-mem/
* https://github.com/phaazon/mind → also look at how keymaps are handled and represented
#### notion, appflowy, jira, etc
* [My integrations | Notion Developers](https://www.notion.so/my-integrations) https://www.notion.so/my-integrations
* https://github.com/toeverything/AFFiNE
* https://ramnes.github.io/notion-sdk-py/
* https://github.com/toeverything/AFFiNE
* [Reddit - Here! Some USEFUL date formulas for your Notion’s Setup!](https://www.reddit.com/r/Notion/comments/fsnmmg/here_some_useful_date_formulas_for_your_notions/)
* https://www.notion.so/my-integrations
* https://ecosystem.atlassian.net/wiki/spaces/JRJC/overview
* via Trello?
* https://github.com/makenotion/notion-sdk-js
* https://github.com/ramnes/notion-sdk-py
* https://github.com/getsyncr/notion-sdk (deprecated)
* https://github.com/makenotion/notion-sdk-typescript-starter
* → switch to https://www.focalboard.com/  ?
* [HedgeDoc - The best platform to write and share markdown.](https://hedgedoc.org/)
* [Whimsical - Work Better, Faster, Together](https://whimsical.com/)
* [hedgedoc/hedgedoc at blog.cloudron.io](https://github.com/hedgedoc/hedgedoc?ref=blog.cloudron.io)
* https://www.znuny.org/de
* https://www.thegist.so/#Pricing
#### time tracking
* [ ]  https://github.com/kstenschke/tictac-track
* https://github.com/TheRolfFR/activity-tracker
* https://activitywatch.net/
* https://github.com/AlphabetsAlphabets/actt
* [irq0/whatidid: what I do and what I did](https://github.com/irq0/whatidid)
* [kquick/mywork: Tool to keep track of what you have been working on, and where and when work should continue](https://github.com/kquick/mywork)
* https://arbtt.nomeata.de/#what https://github.com/nomeata/arbtt - automatic rule-based time tracker
* https://github.com/viseshrp/workedon
#### neorg
* [ ]  https://github.com/nvim-neorg/neorg
* https://github.com/nvim-neorg/neorg/wiki/GTD-Queries/ba2cc1c5cf8c5ed0690e445f213e18c04ff4e157
#### calendar
* https://github.com/anufrievroman/calcure
* https://julian.digital/2023/07/06/multi-layered-calendars/
* https://julian.digital/2023/07/06/multi-layered-calendars/
* https://github.com/itchyny/calendar.vim
* https://github.com/ds1sqe/Calendar.nvim
* [khal](https://github.com/pimutils/khal)
* [neorg calendar](https://github.com/nvim-neorg/neorg/wiki/Calendar)

#### J, theory
* [gtd books](http://libgen.rs/search.php?req=getting+things+done+David+allen&open=0&res=25&view=simple&phrase=1&column=def) http://libgen.rs/search.php?req=getting+things+done+David+allen&open=0&res=25&view=simple&phrase=1&column=def
* [BOOKSTORES: How to Read More Books in the Golden Age of Content](https://youtu.be/lIW5jBrrsS0)
* [Are TODO Applications Hind](https://www.youtube.com/watch?v=BcxZj2qh4Kw)ering Your Productivity?
* [TagTrees: Improving Personal Information Management Using Associative Navigation- on screen version](https://karl-voit.at/tagstore/downloads/Voit2012b.pdf)
* [The Tag «pim»](https://karl-voit.at/tags/pim/)
* https://jamesclear.com/how-to-stop-procrastinating
* https://www.jeffsanders.com/the-7-essential-elements-of-productivity-element-4-planning/
#### historical
* [TaskMaster](http://www.kevra.org/TheBestOfNext/ThirdPartyProducts/ThirdPartySoftware/InformationManagement/TaskMaster/TaskMaster.html)
#### video / blog explaining personal system
* [my productivity workflow 2023!](https://youtu.be/IZX-cDR6IQM)
* [my productivity workflow 2023!](https://youtu.be/IZX-cDR6IQM)
* [My Get Things Done (GTD) Task](https://www.youtube.com/watch?v=8I7nQmKAWpM) Management System Using
* **Productivity Setup with Vimwiki, Taskwarrior and MDwiki: Part 1** https://www.youtube.com/watch?v=A1YgbAp5YRc
* [My efficient and effective Productivity Setup With Emacs, Org Mode and Org Agenda](https://youtu.be/oG9jP0SsPqQ)
* My GTD Emacs Workflow (Getting Things Done) - YouTube https://m.youtube.com/watch?v=92PCxH29UCo
#### → export
* https://github.com/kala13x/libxutils
* [JasonShin/fp-core.rs: A library for functional programming in Rust](https://github.com/JasonShin/fp-core.rs)
* [Automate the Boring Stuff with Python](https://automatetheboringstuff.com/chapter18/)
* [Paperspace Blog](https://blog.paperspace.com/)
* [python - Combining pyperclip copy-to-clipboard with pyautogui paste? - Stack Overflow](https://stackoverflow.com/questions/47075240/combining-pyperclip-copy-to-clipboard-with-pyautogui-paste)
* Read https://learnxinyminutes.com/docs/fr-fr/lua-fr/, https://learnxinyminutes.com/docs/pt-br/lua-pt/, https://learnxinyminutes.com/docs/de-de/lua-de/, https://learnxinyminutes.com/docs/ru-ru/lua-ru/
* algorithm - Evenly space n items over m iterations - Stack Overflow
* [Stuff I did - The stuff I do](https://www.statox.fr/projects/#)
* https://graz.social/@publicvoit/111388551599358628
* [pywal/pywal/backends/wal.py at master · dylanaraps/pywal](https://github.com/dylanaraps/pywal/blob/master/pywal/backends/wal.py)
* https://github.com/Rigellute/spotify-tui/issues/732 for spotify-tui on rpi
* https://docs.spotifyd.rs/installation/Raspberry-Pi.html
* [https://accounts.spotify.com/authorize?response_type=code&state=AV5CzOfJ8YxNnEch&client_id=0cd789e4785c4b19ad5a200822b12104&redirect_uri=http:%2F%2Flocalhost:8888%2Fcallback&scope=playlist-read-collaborative playlist-read-private playlist-modify-private playlist-modify-public user-follow-read user-follow-modify user-library-modify user-library-read user-modify-playback-state user-read-currently-playing user-read-playback-state user-read-playback-position user-read-private user-read-recently-played&](https://accounts.spotify.com/authorize?response_type=code&state=AV5CzOfJ8YxNnEch&client_id=0cd789e4785c4b19ad5a200822b12104&redirect_uri=http:%2F%2Flocalhost:8888%2Fcallback&scope=playlist-read-collaborative%20playlist-read-private%20playlist-modify-private%20playlist-modify-public%20user-follow-read%20user-follow-modify%20user-library-modify%20user-library-read%20user-modify-playback-state%20user-read-currently-playing%20user-read-playback-state%20user-read-playback-position%20user-read-private%20user-read-recently-played&)
* https://developer.spotify.com/dashboard
* [proglang table](https://www.notion.so/189fb9f08c944ab3ba2c284a4fb09445?pvs=21)
* [palette::named - Rust](https://docs.rs/palette/0.4.1/palette/named/index.html#constants)
* [rdbo/sigma-linux: Sigma Linux - Σlite Operating System](https://github.com/rdbo/sigma-linux)
* [mtkennerly/poetry-dynamic-versioning: Plugin for Poetry to enable dynamic versioning based on VCS tags](https://github.com/mtkennerly/poetry-dynamic-versioning)
* [Colored and Clickable Wrapping URLs in LaTeX and LyX](http://troubleshooters.com/linux/lyx/urlwrap.htm)
* [Is there a plugin for seeing a live preview of HTML/CSS/JS?Reddithttps://www.reddit.com › neovim › comments › plggq3](https://www.reddit.com/r/neovim/comments/plggq3/is_there_a_plugin_for_seeing_a_live_preview_of/)
* [GitHub - rdbo/sigma-linux: Sigma Linux - Σlite Operating System](https://github.com/rdbo/sigma-linux)
* [Create a Bootable Device - Alpine Linux](https://wiki.alpinelinux.org/wiki/Create_a_Bootable_Device)
#### formats
* https://xit.jotaen.net/
* https://stackoverflow.com/questions/35250621/recursive-self-referencing-json-schema
* https://stackoverflow.com/questions/20752716/json-schema-recursive-schema-definition
* [JSON Schema](https://json-schema.org/understanding-json-schema)
* [JSON Schema - object](https://json-schema.org/understanding-json-schema/reference/object#regexp)
* [JSON Schema 2020-12](https://www.learnjsonschema.com/2020-12/)
* [types-jsonschema · PyPI](https://pypi.org/project/types-jsonschema/#history)
* [Live* markdown *preview* to PDF : r/*neovim* - Reddit](https://www.reddit.com/r/neovim/comments/w7ki77/live_markdown_preview_to_pdf/)
#### scheduling
* https://github.com/PROxZIMA/TimetableScheduler
* https://github.com/topics/timetable-generator
#### spaced repetition
* Spaced repetition systems can be used to program attention https://notes.andymatuschak.org/zB92WZZ5baBHKZPPbWMbYEv
#### other
* [Python 3.12 Generic Types Explained ArjanCodes ArjanCodes Verificada • • 5,2 K visualizaciones hace 5 horas Nuevo](https://www.youtube.com/watch?v=q6ujWWaRdbA)
* [Protocols in Python: Why You Need Them - GoDataDriven](https://godatadriven.com/blog/protocols-in-python-why-you-need-them/)
* [How to create module-wide variables in Python? - Stack Overflow](https://stackoverflow.com/questions/1977362/how-to-create-module-wide-variables-in-python)
* [Pytest With Eric](https://pytest-with-eric.com/)
* [Welcome to Pydantic - Pydantic](https://docs.pydantic.dev/latest/)
* [Pytest With Eric](https://pytest-with-eric.com/)
* [Building Implicit Interfaces in Python with Protocol Classes](https://andrewbrookins.com/technology/building-implicit-interfaces-in-python-with-protocol-classes/)
* [nebokrai/.envrc at main · yelircaasi/nebokrai](https://github.com/yelircaasi/nebokrai/blob/main/.envrc)
* [annotated-types/annotated_types/**init**.py at main · annotated-types/annotated-types](https://github.com/annotated-types/annotated-types/blob/main/annotated_types/__init__.py)
* Read https://neovim.io/doc/user/lua.html
* Read https://www.lua.org/manual/5.1/1
#### fitness
* [Body Weight Planner - NIDDK](https://www.niddk.nih.gov/bwp)
#### diff
* [GitPython/git/diff.py at main · gitpython-developers/GitPython](https://github.com/gitpython-developers/GitPython/blob/main/git/diff.py)
* https://hackage.haskell.org/package/Diff
* https://stackoverflow.com/questions/41031207/generic-diff-of-objects-that-include-lists-with-gdiff
* https://www.reddit.com/r/haskell/comments/kcfpii/recommendation_for_diffing_library_in_haskell/
* https://github.com/bgamari/diff-utils
* https://github.com/google/diff-match-patch
* https://hackage.haskell.org/package/Diff-0.4.0/docs/Data-Algorithm-Diff.html
* [Data.Generic.Diff](https://hackage.haskell.org/package/gdiff-1.1/docs/Data-Generic-Diff.html)
* [Data.Array.Diff](https://www.haskell.org/ghc/docs/6.0/html/base/Data.Array.Diff.html)
* https://hackage.haskell.org/package/dlist
* [https://www.reddit.com › r › haskell › comments › 17hznjg › introducing_myersdiff_a_fast_text_diffing_library](https://www.reddit.com/r/haskell/comments/17hznjg/introducing_myersdiff_a_fast_text_diffing_library/)
* [https://hoogle.haskell.org › ?hoogle=diff](https://hoogle.haskell.org/?hoogle=diff)
* [difflib — Helpers for computing deltas — Python 3.12.0 documentation](https://docs.python.org/3/library/difflib.html)

##### inthe.am
* [inthe.am](https://inthe.am/configure/synchronization) + [foreground](https://github.com/bgregos/foreground)
* [taskwarrior-inthe.am](https://github.com/coddingtonbear/taskwarrior-inthe.am)
* https://taskwarrior.org/docs/hooks_guide/ → [inthe.am](http://inthe.am) webhooks?
* https://intheam.readthedocs.io/en/latest/api/index.html
* https://inthe.am/ 
* [docs](https://intheam.readthedocs.io/en/latest/api/index.html)
* https://inthe.am/configure/email

#### TW (-> nvim)
* [ ] [taskwarrior-tui](https://github.com/kdheepak/taskwarrior-tui)      
* https://github.com/yanick/nvim-taskwarrior 
* https://github.com/ribelo/taskwarrior.nvim 
* https://github.com/tools-life/taskwiki
* [ ] language bindings: https://github.com/jubnzv/go-taskwarrior,  https://github.com/ralphbean/taskw, https://github.com/coddingtonbear/python-taskwarrior
* [ ] hooks: https://github.com/mrVanDalo/taskwarrior-hooks *, https://github.com/bergercookie/tw-hooks
* [ ] [Taskwarrior](https://taskwarrior.org/)  
* [ ] [taskwiki](https://github.com/tools-life/taskwiki)        
* [ ] [tasklib](https://github.com/GothenburgBitFactory/tasklib/)        
* [ ] ⇒ https://timewarrior.net/        
* [ ] → https://taskwarrior.org/tools/#services        
* [ ] → https://taskwarrior.org/tools/
* [powerline-taskwarrior](https://github.com/Zebradil/powerline-taskwarrior)
* [bugwarrior](https://github.com/ralphbean/bugwarrior)** https://github.com/ralphbean/bugwarrior 
* [taskwarrior-web](https://github.com/theunraveler/taskwarrior-web)
* [vim-taskwarrior](https://github.com/blindFS/vim-taskwarrior)
* [taskopen](https://github.com/jschlatow/taskopen)
* [foreground](https://github.com/bgregos/foreground)
* [taskwarrior-notifications](https://github.com/flickerfly/taskwarrior-notifications)
* [taskwarrior-time-tracking-hook](https://github.com/kostajh/taskwarrior-time-tracking-hook)
* [taskwhisperer](https://github.com/cinatic/taskwhisperer)
* [task-dashboard](https://github.com/8ware/task-dashboard)
* [gnome-extension-taskwarrior](https://github.com/sgaraud/gnome-extension-taskwarrior)
* [pomodoro-warriors](https://github.com/cf020031308/pomodoro-warriors)
* [tasknote](https://github.com/mikebobroski/tasknote)
* [pomodoro-warriors](https://github.com/cf020031308/pomodoro-warriors)
* [taskshell](https://github.com/GothenburgBitFactory/taskshell)**
* [Reddit - Taskwarrior is Perfect](https://www.reddit.com/r/commandline/comments/jcpd9q/taskwarrior_is_perfect/)
* [Productivity Setup with Vimwiki, Taskwarrior and MDwiki: Part 1](https://youtu.be/A1YgbAp5YRc)
* [Taskwarrior is THE task ma](https://www.youtube.com/watch?v=rRTnF-EMey0&t=406s)nagement system you need
* [A Dive into Taskwarrior Ec](https://www.youtube.com/watch?v=tijnc65soEI)osystem with Tomas Babej
* [Command Line Task Management With Taskwarrior an Taskell](https://www.youtube.com/watch?v=Z3FtJ9xzn0g&t=1067s)
* https://www.redhat.com/sysadmin/timewarrior-command-line
* [My Sweet Task Manager Setup (taskwarrior/timewarrior)](https://www.youtube.com/live/ElsF5SqzdIY?feature=share)
* [My Get Things Done (GTD) Task Management System Using TaskWarrior](https://youtu.be/8I7nQmKAWpM)
* https://duckduckgo.com/?q=taskwarrior%20telegram&ko=-1&ia=web
* https://timewarrior.net/docs/taskwarrior/
* [Taskwarrior - What's next? - Taskwarrior](https://taskwarrior.org/docs/start/)
* [GothenburgBitFactory/taskwarrior: Taskwarrior - Command line Task Management](https://github.com/GothenburgBitFactory/taskwarrior)
* [To-Do Lists for Hackers!](https://www.youtube.com/watch?v=5wmcn9-IQE4&t=179s)
* [Taskwarrior Lessons](https://www.youtube.com/watch?v=3iyaS5WwcuQ&list=PLI4gKGOkRTj37BHpZnFBVHDsa3J-dAUVF)
* Front End To Taskwarrior
* TaskWarrior - mark.george/Wiki https://isgb.otago.ac.nz/infosci/mark.george/Wiki/wiki/TaskWarrior
* [8ware/task-gantt: Generating Gantt charts from Taskwarrior entries](https://github.com/8ware/task-gantt)
* [task-gantt/gantt.png at master · 8ware/task-gantt](https://github.com/8ware/task-gantt/blob/master/doc/gantt.png)
* [Timewarrior - timew-charts - Timewarrior](https://timewarrior.net/docs/charts/)
* [Manage tasks and projects on Fedora with Taskwarrior - Fedora Magazine](https://fedoramagazine.org/manage-tasks-and-projects-on-fedora-with-taskwarrior/)
* [TaskWarrior, Taskjuggler, Planner and Well Planning Things Part 2](https://blog.x-rayman.co.uk/2013/04/10/taskwarrior-taskjuggler-planner-and-well-planning-things-part-2/)
* [ ] good-looking nvim plugin https://github.com/ribelo/taskwarrior.nvim (keep an eye on https://github.com/dzintars/taskwarrior.nvim)
* [taskw](https://github.com/ralphbean/taskw)
* [ ] https://github.com/GothenburgBitFactory/taskwarrior → build on top of by creating an extension / extensions?    
* Next: write nvim plugin/library/neorg module for taskwarrior (’taskifist’)
* https://taskwarrior.org/tools/ → check ‘lua’ box
* https://r-pufky.github.io/docs/apps/taskwarrior.html 
* https://github.com/ribelo/taskwarrior.nvim 
* https://github.com/bgregos/foreground
* https://github.com/cedricbousmanne/telegram-taskwarrior 
* https://github.com/Ninlives/taskwarrior-telegram-bot 
* https://github.com/rhnvrm/tg-taskwarrior-bot 


#### Neovim, Neorg
* https://github.com/Klafyvel/Norg.jl 
* [ ] roadmap of a neorg integration: https://github.com/skbolton/neorg-taskwarrior/blob/main/roadmap.norg
* https://github.com/skbolton/neorg-taskwarrior
* [From No Org to Neorg - YouTube](https://www.youtube.com/playlist?list=PLx2ksyallYzVI8CN1JMXhEf62j2AijeDa)
* https://github.com/phenax/neorg-hop-extras 
- https://github.com/edluffy/hologram.nvim
- https://github.com/krivahtoo/silicon.nvim



#### AppFlowy and Related
* https://itsfoss.com/appflowy/
* https://appflowy.gitbook.io/docs/essential-documentation/readme
* [AppFlowy.IO](https://appflowy.io/)
* https://itsfoss.com/appflowy/
* [AppFlowy-IO/AppFlowy-Server: AppFlowy is an open-source alternative to Notion. You are in charge of your data and customizations. Built with Flutter and Rust.](https://github.com/AppFlowy-IO/AppFlowy-Server)
* [How to host on a website · AppFlowy-IO/AppFlowy · Discussion #283](https://github.com/AppFlowy-IO/AppFlowy/discussions/283)
* → migrate Notion to AppFlowy?
* [(1) Town Square - yelircaasi.mattermost.com Mattermost](https://yelircaasimattermostcom.cloud.mattermost.com/main/channels/town-square)

#### Theory
* https://julian.digital/2023/07/06/multi-layered-calendars/

#### Obsidian
* best tasks plugin in obsidian https://www.youtube.com/watch?v=quXNtjTe5WE 
* https://obsidian.md/
* https://lifehacker.com/tech/best-obsidian-plugins

#### Signal
* [lwesterhof/semaphore: A simple (rule-based) bot library for Signal Private Messenger.](https://github.com/lwesterhof/semaphore)
* https://github.com/filipre/signalbot
* [AsamK/signal-cli: signal-cli provides an unofficial commandline, dbus and JSON-RPC interface for the Signal messenger.](https://github.com/AsamK/signal-cli)
* [bbernhard/signal-cli-rest-api: Dockerized Signal Messenger REST API](https://github.com/bbernhard/signal-cli-rest-api)
* https://nixos.wiki/wiki/Signald 
* https://github.com/AsamK/signal-cli 

#### Habit Trackers
* [Habitscipline: A habit manager](https://github.com/NorfairKing/habitscipline)
* https://github.com/schmee/habu 
* [fschlz/habit-tracker: simple streamlit app to keep track of the essentials](https://github.com/fschlz/habit-tracker)
* make a habit-building subapp in the scheduling app
* [xpavle00/Habo: Habo is an open-source habit tracker. Created in a flutter.](https://github.com/xpavle00/Habo)
* [wakatara/harsh: Habit tracking for geeks. A minimalist, command line tool for tracking and understanding your habits.](https://github.com/wakatara/harsh)
* [codito/habito: Simple commandline habits tracker.](https://github.com/codito/habito)
* [iestynpryce/habit: Command line habit tracker](https://github.com/iestynpryce/habit)
* [nerdypepper/dijo: scriptable, curses-based, digital habit tracker](https://github.com/nerdypepper/dijo)
* [qba73/habit: Habit tracker is a CLI app for tracking daily habits.](https://github.com/qba73/habit)
* [Encrypted to-do list, habit and mood tracker, journaling and notes app | Lunatask](https://lunatask.app/)

#### Neovim Plugins
* https://github.com/jackMort/pommodoro-clock.nvim
* https://github.com/nfrid/due.nvim 
* https://github.com/wthollingsworth/pomodoro.nvim 

#### To-Do Apps

#### Mobile Connection
* https://zulip.com/plans/ 
* https://sopel.chat/ 
* https://www.rocket.chat/pricing 
* https://gotify.net/ 

#### Spaced Repitition
* [Spaced out: A spaced repetition tool](https://github.com/NorfairKing/sparep)
* [anki](https://github.com/ankitects/anki)

#### ->
https://medevel.com/tag/productivity/


#### General Projects
* [Encrypted to-do list, habit and mood tracker, journaling and notes app | Lunatask](https://lunatask.app/)
* [openproject](https://github.com/opf/openproject)

#### Hosting
* https://www.nearlyfreespeech.net/services/hosting
* https://www.slant.co/options/16947/alternatives/~netlify-alternatives
* https://www.netlify.com/pricing/
* https://fly.io/
* https://www.linode.com/pricing/
* https://www.ionos.de/cloud/cloud-server
* https://codeless.co/heroku-alternatives/
* https://freedombox.org/
* https://nextcloud.com/install/#instructions-server
* https://www.freecodecamp.org/news/how-to-host-lightweight-apps-for-free-a29773e5f39e/
* https://www.hosttest.de/vergleich/cloudserver-linux.html
* https://linuxhandbook.com/free-linux-cloud-servers/  

#### Time Tracking
https://github.com/traggo/

#### SORT


#### Matrix Tools
* https://docs.rs/matrix_bot_api/latest/matrix_bot_api/ ****
#### Note-Taking Tools (reference, ideas)
* https://srid.ca/neuron-announce
* https://github.com/srid/emanote 
* https://github.com/jrnl-org/jrnl 

#### Database for ganttouchthis
* tinydb
* sqlite3?
* postgresql?
#### Taskwarrior Plugins
##### Bash/Shell
* https://gitlab.com/doronbehar/taskwarrior-fzf
* https://github.com/quandangv/polybar-warrior 
##### C
* https://github.com/initBasti/context-switch-warrior
##### Python
* https://github.com/GothenburgBitFactory/tasklib
* https://github.com/tools-life/taskwiki
* https://github.com/vit-project/vit
* https://github.com/bergercookie/syncall
* https://github.com/jokerdino/taskwarrior-flask 
* https://github.com/AliGhahraei/just-start (see https://github.com/okraits/omodoro)
* https://github.com/mrschyte/taskwarrior-hooks/
* https://github.com/nnist/taskschedule 
* https://github.com/alkim0/task-attach ***
* https://github.com/Hatoris/taskwarrior_jrnl_hook 
* https://github.com/mokrunka/taskwarrior-capsules 
* https://github.com/mokrunka/taskwarrior-subtask-capsule - good extension
* https://github.com/mokrunka/taskwarrior-context-capsule 
* https://github.com/mokrunka/taskwarrior-EXAMPLE-capsule 
* https://github.com/mokrunka/taskwarrior-blocks-capsule 
* https://github.com/Aerex/icaltask 
* https://github.com/bergercookie/item_synchronizer
* https://github.com/neingeist/mail2taskwarrior
* https://github.com/Zebradil/taskwarrior-hooks
* https://github.com/contrun/taskwarrior-terminal-kanban
* https://github.com/rmonico/itask (includes rofi)
* https://github.com/cakira/subtaskwarrior
* https://github.com/spencermamer/task-graphdeps
* https://github.com/spencermamer/task-graphdeps
* https://github.com/CourrierGui/kanbanwarrior
* https://github.com/clemux/task-matrix-bot
* https://github.com/chess-seventh/TaskKhalReschedulWarrior
* https://github.com/scmbradley/taskw-i3blocks 
* https://github.com/voidcase/taskseq
* https://github.com/Fongshway/twpm
* https://github.com/sorrowless/twsyncer 
* https://github.com/strawpants/kanboard_taskwarrior 
* https://github.com/zhangfeng/taskli (?) 
* https://github.com/RicardoRodriguesCosta/TaskHelper (?)
* https://github.com/radarsymphony/taskwarrior-hooks
* https://github.com/leifdenby/twdep - dependency tree in the terminal
* https://github.com/yulqen/twremind - hook script with remote sync
* https://github.com/RvstFyth/rofi-taskwarrior 
* https://github.com/neingeist/task-recurring-delete 
* https://github.com/almostnobody/task2org 
* https://github.com/youzark/taskmanager
* https://github.com/claudiomattera/taskreminder
* https://github.com/sstallion/taskwarrior-hooks
* https://github.com/guludo/taskwarrior-autotagger
* https://github.com/KarstenSchulz/tasktual
* https://github.com/Ninlives/taskwarrior-telegram-bot
* https://github.com/kevinstadler/taskwarrior-vit-config 
* https://github.com/kevinstadler/taskwarrior-vit-config-old
* https://github.com/ABeehive/TaskWarrior-recur-with-until
* https://github.com/yulqen/tw-date-tools
* https://github.com/DerHabicht/twinput 
* https://github.com/fplourde/Taskwarrior-habitica-hooks → https://habitica.com/static/features 
* https://github.com/andrey-utkin/taskdb 
* https://github.com/garykl/task2dot
* https://github.com/tbabej/taskpirate 
* https://github.com/jrabbit/taskd-client-py
* https://github.com/thehunmonkgroup/onenote 
* https://github.com/keigezellig/kanbanwarrior https://blog.joosten-industries.nl/posts/Kanban-Warrior/  
* https://github.com/jrabbit/taskd-redshirt
##### Julia
* https://github.com/ak202/Taskwarrior.jl 
##### Kotlin
* https://github.com/bgregos/foreground 
##### Perl
* https://github.com/hashref/rectasks → export to Neorg format
* https://github.com/8ware/task-gantt → read and understand, see if at all useful; otherwise, just learn some perl
* [export-csv.pl](https://taskwarrior.org/download/export-csv.pl)
* [export-html.pl](https://taskwarrior.org/download/export-html.pl)
* [export-ical.pl](https://taskwarrior.org/download/export-ical.pl)
* [export-sql.py](https://taskwarrior.org/download/export-sql.py)
* [export-tsv.pl](https://taskwarrior.org/download/export-tsv.pl)
* [export-xml.pl](https://taskwarrior.org/download/export-xml.pl)
* [export-xml.py](https://taskwarrior.org/download/export-xml.py)
* [export-xml.rb](https://taskwarrior.org/download/export-xml.rb)
* [export-yad.pl](https://taskwarrior.org/download/export-yad.pl)
* [export-yaml.pl](https://taskwarrior.org/download/export-yaml.pl)
* [import-todo.sh.pl](https://taskwarrior.org/download/import-todo.sh.pl)
* [import-yaml.pl](https://taskwarrior.org/download/import-yaml.pl)
##### Dart
* https://github.com/CCExtractor/taskwarrior-flutter
* https://github.com/bradyt/taskw-dart 
##### Elixir
* https://github.com/linduxed/taskwarrior.ex 
##### Ruby
* https://github.com/nerab/twdeps
##### Go
* https://github.com/jubnzv/go-taskwarrior
##### Rust
[taskwarrior-tui](https://github.com/kdheepak/taskwarrior-tui)
* [rofi-taskwarrior](https://github.com/nyarly/rofi-taskwarrior)
* [sidenotes](https://github.com/maxjoehnk/sidenotes) 
* [taskwarrior-hooks](https://github.com/mrVanDalo/taskwarrior-hooks) 
* [taskn](https://github.com/crockeo/taskn) 
* [task-hookrs](https://github.com/matthiasbeyer/task-hookrs) 
* [taskwarrior-rofi](https://github.com/mythmon/taskwarrior-rofi) 
* [mitewarrior](https://github.com/grasegger/mitewarrior) 
* [task-rs](https://github.com/divagant-martian/task-rs) 
* [gtd-rust-taskwarrior](https://github.com/Pete-Hamlin/gtd-rust-taskwarrior) 
* [rusty-warrior](https://github.com/chess-seventh/rusty-warrior) 
* [voice_to_taskwarrior](https://github.com/bergercookie/voice_to_taskwarrior) 
* [rustwarrior](https://github.com/danieleades/rustwarrior) 
* [task-changes](https://github.com/ayosec/task-changes) 
* [task-streamer](https://github.com/mattcl/task-streamer) 
* [taskcalrs](https://github.com/mbpowers/taskcalrs) 
* [taskserver-rust](https://github.com/YuseiIto/taskserver-rust) 
* [taskw](https://github.com/weinshec/taskw) 
* [taskwarrior](https://github.com/chrisbirster/taskwarrior)
* [taskwarrior-focus](https://github.com/dathanb/taskwarrior-focus)
* [taskwarrior-rs](https://github.com/n8henrie/taskwarrior-rs) 
* [taskwarrior-sync-rs](https://github.com/mozram/taskwarrior-sync-rs) 
* [taskwarrior-testdata](https://github.com/kdheepak/taskwarrior-testdata) 
* [template_rust](https://github.com/SunGodRamen/template_rust) 
* [twtodo-rs](https://github.com/simachri/twtodo-rs) 
##### Lisp
* [projectwarrior](https://github.com/jonathanabennett/projectwarrior)
##### Docker
* [taskd](https://github.com/pztrn/taskd) 
* [dock-warrior](https://github.com/codehivetx/dock-warrior) 
* [docker-taskd](https://github.com/jigish/docker-taskd) 
* [taskserver_docker](https://github.com/Ellana42/taskserver_docker) 
* [taskwarrior-container](https://github.com/gistella/taskwarrior-container) 
* [taskwarrior-deployment](https://github.com/csams/taskwarrior-deployment) 
* [taskwarrior-ui-container](https://github.com/jessedearing/taskwarrior-ui-container) 
* [taskwarrior_rest_api](https://github.com/jeka1331/taskwarrior_rest_api) 
##### C++
* https://github.com/AhmedHoss/TaskServer
##### C#
* https://github.com/ForNeVeR/taskomatic
##### Haskell
* https://github.com/maralorn/haskell-taskwarrior
* https://github.com/maralorn/taskwarrior-git-backend
* https://github.com/DCsunset/taskwarrior-webui
##### JS
* https://github.com/abesto/gtd 
* https://github.com/gkssjovi/trackwarrior
* https://github.com/cinatic/taskwhisperer 
##### Nim
* [taskopen](https://github.com/jschlatow/taskopen) 
* https://github.com/trev-dev/timew-billable 
##### Other
* https://github.com/coddingtonbear/taskwarrior-pomodoro 
#### Tasks, ToDos
* [taskwarrior](https://taskwarrior.org/) - A command-line TODO list manager → [taskwarrior](https://github.com/GothenburgBitFactory/taskwarrior) with [vit](https://github.com/vit-project/vit) or taskwarrior-tui (look at https://github.com/klaussinani/taskbook interface)
* other sources of ideas:    
* [td-cli](https://github.com/darrikonn/td-cli) - A todo command line manager to organize and manage your todos across multiple projects.    
* [taskell](https://taskell.app/) - Command-line Trello-like kanban-board/TODO lists.    
* [Everdo](https://everdo.net/) - TODO list and Getting Things Done® app for all platforms. Beautiful, powerful, not SaaS, free version available.    
* [Super Productivity](https://super-productivity.com/) - The simple free flexible ToDo List / Time Tracker / personal Jira and Github Task Manager.    
* [sleek](https://github.com/ransome1/sleek) - Cross platform todo manager based on the todo.txt syntax.    
* [kanban.bash](https://github.com/coderofsalvation/kanban.bash) - commandline asciii kanban board for minimalist productivity bash hackers (csv-based) → almost usable; incorporate ideas into gtt    
* [kabmat](https://github.com/PlankCipher/kabmat) - TUI program for managing kanban boards with vim-like keybindings. → excellent interface: use? or adopt ideas?    
* [dstask](https://github.com/naggie/dstask) - Single binary terminal-based TODO manager with git-based sync + markdown notes per task → keep taskwarrior, but look at this for ideas    
* [Go For It](http://manuel-kehl.de/projects/go-for-it/) - Go For It! is a simple and stylish productivity app, featuring a to-do list, merged with a timer that keeps your focus on the current task. → idea    
* [Redmine](https://github.com/redmine/redmine) - a flexible project management web application written using Ruby on Rails    
* [Planner](https://useplanner.com/) - Planner keeps track of all your tasks, projects, and goals in one beautifully simple place. → borrow interface ideas?        
* [Todo.txt](http://todotxt.com/) - Todo.txt is a set of focused editors which help you manage your tasks with as few keystrokes and taps possible.
* https://github.com/manyids2/taskwar.nvim
    
#### Time Tracking and Timers
* [Timewarrior](https://github.com/GothenburgBitFactory/timewarrior) - A time tracking utility that offers simple stopwatch features as well as sophisticated calendar-based backfill, along with flexible reporting.
* interface ideas: [moro](https://github.com/omidfi/moro)) - Simple tool for tracking work hours.    
* interface ideas: [Timetrap](https://github.com/samg/timetrap) - A simple command line time tracker written in Ruby. It provides an easy to use command line interface for tracking what you spend your time on.
* [bartib](https://github.com/nikolassv/bartib) - A simple timetracker for the command line. It saves a log of all tracked activities as a plaintext file and allows you to create flexible reports.
* [ActivityWatch](https://activitywatch.net/) - ActivityWatch is an app that automatically tracks how you spend time on your devices.
* [Time Cop](https://timecop.app/en/) - A time tracking app that respects your privacy and gets the job done without getting too fancy.
* [Toggl Track](https://flathub.org/apps/details/com.toggl.TogglDesktop/) - Simple and Intuitive Time Tracking Software with cloud sync.
* [MyTimer](https://github.com/sepandhaghighi/mytimer) - Simple timer for the terminal with timer-mode and alarm.
* [Alarm Clock](http://alarm-clock.pseudoberries.com/) - Alarm Clock is a fully-featured alarm clock for your GNOME panel or equivalent.
* [GNOME Pomodoro](http://gnomepomodoro.org/#download) - A full-featured pomodoro timer for GNOME.
* [Break Timer](https://wiki.gnome.org/Apps/BreakTimer) - A break timer application for GNOME.
* [BreakTimer](https://breaktimer.app/) - BreakTimer is a cross platform desktop application with nice UI for managing and enforcing periodic breaks.
* [RSIBreak](https://apps.kde.org/rsibreak/) - RSIBreak takes care of your health and regularly breaks your work to avoid repetitive strain injury.
* [Taskade](https://www.taskade.com/downloads) - Real-time organization and collaboration tool for getting things done. Taskade is a unified workspace for team tasks, notes, with integrated video chat available cross-platform and free to use.
* [Solanum](https://apps.gnome.org/app/org.gnome.Solanum/) - A pomodoro timer for the GNOME desktop.
* [Timetrap](https://github.com/samg/timetrap)) - Simple timetracker.
* [Watson](https://github.com/TailorDev/Watson)) - Generate reports for clients and manage your time.
* [utt](https://github.com/larose/utt)) - Simple time tracking tool.
* [doing](https://github.com/ttscoff/doing/)) - Keep track of what you’re doing and track what you’ve done.
* [arbtt](https://github.com/nomeata/arbtt) - (automatic, rule-based time tracker) runs in background, collecting information regarding open windows, focussed ones, etc.; it can be configured to display statistics on the collected data, e.g., figuring out the time spent on one specific window.
* [Bartib](https://github.com/nikolassv/bartib) - Easy to use time tracking tool for the command line. It saves a log of all tracked activities as a plaintext file and allows you to create flexible reports.
* [dijo](https://github.com/NerdyPepper/dijo) - Scriptable, curses-based, digital habit tracker.
* [habitctl](https://github.com/blinry/habitctl) - Minimalist command line tool you can use to track and examine your habits.
* [utt](https://github.com/larose/utt) - Ultimate Time Tracker - A simple command-line time tracker written in Python.
* [doing](https://github.com/ttscoff/doing/) - A command line tool for remembering what you were doing and tracking what you've done.
* [habitmap](https://github.com/shuu-wasseo/habitmap) - A command-line app to track your habits and visualise how committed you are to making or maintaining them with colorful heatmaps.
* [zeitkatze](https://github.com/leonmavr/zeitkatze) - Simplest stopwatch in a linux console.
* [Watson](https://github.com/TailorDev/Watson) - Time tracking CLI to know how much time you are spending on your projects. It can generate nice reports for clients.
* [Moro](https://github.com/omidfi/moro) - A command line tool for tracking work hours, as simple as it can get.
#### Calendar
* Calendar: [remind](https://git.skoll.ca/Skollsoft-Public/Remind) with [wyrd](https://gitlab.com/wyrd-calendar/wyrd/)
* [khal](https://github.com/pimutils/khal) - CLI and terminal calendar program, able to synchronize with CalDAV servers through [vdirsyncer](https://github.com/pimutils/vdirsyncer).
* [pal](https://sourceforge.net/p/palcal/code/HEAD/tree/) - Calendar program for Unix/Linux systems that can keep track of events; custom, plain text storage format; interesting and fully functional.
* [Calcure](https://github.com/anufrievroman/calcure) - Modern TUI calendar and task manager with customizable interface.
* [calcurse](https://git.calcurse.org/calcurse.git/) - A calendar and scheduling application for the command line. It helps keep track of events, appointments and everyday tasks.
* [caldr](https://github.com/mrusme/caldr) - A lightweight CLI / TUI calendar that supports CalDAV.
* [Remind](https://git.skoll.ca/Skollsoft-Public/Remind) - Calendar program with possibility to set complex rules to define events; custom, powerful text-based storage format.
* [remint](https://sr.ht/~mlaparie/remint/) - A simple terminal UI wrapper for D. Skoll's Remind calendar program
* [peroutine](https://github.com/UlyssesZh/peroutine) - Remind you of periodical events. The period can be any positive integer of days, so work around the fact that the number of days in a week is prime.
* [Wyrd](https://gitlab.com/wyrd-calendar/wyrd) - Curses front-end for [Remind](https://www.roaringpenguin.com/products/remind) written in OCaml with vertically scrollable time table.
* [vdirsyncer](https://github.com/pimutils/vdirsyncer) - CalDAV synchronization program.
*    [birthday](https://github.com/IonicaBizau/birthday)) - Know when a friend's birthday is coming.
* [calcurse](https://calcurse.org/) - A calendar and scheduling application for the command line.
* [California](https://wiki.gnome.org/Apps/California) - Complete Calendar app replacement which uses natural language for creating events.
* [Kalendar](https://apps.kde.org/kalendar/) - Kalendar is a calendar application that allows you to manage your tasks and events.
* [avail](https://github.com/mufeez-amjad/avail) - Find available times between all your calendars.
* [conrad](https://github.com/vinayak-mehta/conrad) - Track conferences and meetups.
#### Contacts
* [khard](https://github.com/lucc/khard) - Console carddav client written in Pyhton.
* [addrb](https://github.com/mrusme/addrb) - A lightweight CLI / TUI address book that supports CardDAV.
* [ppl addressbook](https://github.com/henrycatalinismith/ppl) - `ppl` is free software made out of other free software. It's built on top of Ruby and Git, and the completely free vcard address book format.
#### Résumé
* https://github.com/przpiw/PDFResumeBuilder 
* https://jsonresume.org/         
* [ancv](https://github.com/alexpovel/ancv) - Renders your (JSON) resume/CV for online & pretty terminal display.
#### Misc
* [arttime](https://github.com/reportaman/arttime) - Beauty of text art meets functionality of clock, timer, pomodoro++ time manager
* [buku](https://github.com/jarun/buku) - A powerful bookmark manager written in Python3 and SQLite3.
* [task-manager](https://github.com/lingtalfi/task-manager) - Execute all your scripts with just two or three keystrokes.
* [Workrave](http://www.workrave.org/) - A program that assists in the recovery and prevention of Repetitive Strain Injury (RSI).
* [Ambient Noise](https://github.com/costales/anoise) - An ambient noise generator for Linux.
* [Blanket](https://apps.gnome.org/app/com.rafaelmardojai.Blanket/) - Improve focus and increase your productivity by listening to different sounds.
* [f.lux](https://justgetflux.com/linux.html) - A program that reddens your display to help you sleep better.
* [Redshift](http://jonls.dk/redshift/) - Redshift adjusts the color temperature of your screen according to your surroundings. This may help your eyes hurt less if you are working in front of the screen at night.
#### Note taking
* [jrnl](https://github.com/jrnl-org/jrnl) - A simple command line journal application that stores your journal in a plain text file
* [Org mode](https://git.savannah.gnu.org/cgit/emacs/org-mode.git) - Super-powerful [Emacs](https://www.gnu.org/software/emacs/) plugin to manage outlines with associated timestamps, priorities, labels, etc.; available views grouped by time (agenda), tags, etc.; plain text storage format.
* [cadmus](https://github.com/RyanGreenup/cadmus) - Shell Scripts to Facilitate Effective Note Taking.
* [dn](https://github.com/tomlockwood/dn) - Daily notes command line tool.
* [dnote](https://github.com/dnote/dnote) - A simple command line notebook for the terminal. It also offers a seamless multi-device sync and a web interface.
* [eureka](https://github.com/simeg/eureka) - Store your ideas without leaving the terminal.
* [nb](https://github.com/xwmx/nb) - A command line and local web note‑taking, bookmarking, archiving, and knowledge base application.
* [idea](https://github.com/IonicaBizau/idea) - A lightweight tool for keeping ideas in a safe place quick and easy.
* [jot](https://github.com/araekiel/jot) - Jot is a feature-stripped version of Obsidian focused on rapid note management through the terminal. It uses the same format of storage as Obsidian.
* [kb](https://github.com/gnebbia/kb) - A minimalist knowledge base manager.
* [Noted](https://github.com/torbratsberg/noted) - Notes library, with viewer and shortcuts to add, delete and edit notes.
* [Xmind](https://www.xmind.net/) - A mind mapping tool
* [NoteSH](https://github.com/Cvaniak/NoteSH) - Sticky notes App in the Terminal, built with Textual, an amazing TUI framework!
* [Mindforger](https://www.mindforger.com/) - Thinking notebook and Markdown editor.
* [Standard Unix Notes](https://github.com/Standard-Unix-Notes/unix-notes) - GPG Encrypted Notes/Notebook manager for BSD/Linux.
* [posce](https://github.com/posce/posce) - A note-taking toolkit for your command line.
* [Terminal velocity](https://github.com/Correia-jpv/fucking-awesome-cli-apps/blob/main/vhp.github.io/terminal_velocity) - A fast note-taking app.
* [h-m-m](https://github.com/nadrad/h-m-m) - h-m-m (pronounced like the interjection "hmm") is a simple, fast, keyboard-centric terminal-based tool for working with mind maps.
* [Boostnote](https://boostnote.io/) - Boostnote is an open source note-taking app made for programmers just like you.
* [Cherrytree](https://www.giuspen.com/cherrytree/) - A hierarchical note taking application, featuring rich text and syntax highlighting, storing data in a single xml or sqlite file.
* [Org mode](https://orgmode.org/) - Org mode is for keeping notes, maintaining TODO lists, planning projects, and authoring documents with a fast and effective plain-text system.
* [Logseq](https://logseq.com/) - Logseq is a privacy-first, open-source knowledge base that works on top of local plain-text Markdown and Org-mode files. Use it to write, organize and share your thoughts, keep your to-do list, and build your own digital garden.
* [Tomboy](https://wiki.gnome.org/Apps/Tomboy) - Tomboy is a desktop note-taking application which is simple and easy to use.
* [Notes](https://www.get-notes.com/) - A clean simple note taking app for Linux.
* [Standard Notes](https://standardnotes.com/) - Standard Notes is an end-to-end encrypted note-taking app for digitalists and professionals. Capture your notes, files, and life’s work all in one secure place.
* [Trilium Notes](https://github.com/zadam/trilium) - Trilium Notes is a hierarchical note taking application with focus on building large personal knowledge bases.
* [Standard Unix Notes](https://github.com/Standard-Unix-Notes/unix-notes) - GPG Encrypted Notes/Notebook manager for BSD/Linux
* [Turtl](https://turtlapp.com/) - The secure, collaborative notebook.
* https://github.com/umangv/indicator-stickynotes
* [Simplenote](https://simplenote.com/) - A Cross platform notetaking app and Evernote competitor.
* [QOwnNotes](https://www.qownnotes.org/) - QOwnNotes is a plain-text file notepad and todo-list manager with markdown support and ownCloud / Nextcloud integration.
* [dnote](https://github.com/dnote/dnote) - A simple command line notebook with multi-device sync and web interface
* [eureka](https://github.com/simeg/eureka/) -  CLI tool to input and store your ideas without leaving the terminal
* [Polar](https://getpolarized.io/) - Polar is a personal knowledge repository for PDF and web content supporting incremental reading and document annotation.
#### Finance
* [GnuCash](https://www.gnucash.org/) - GnuCash is a free software accounting program that implements a double-entry bookkeeping system. It was initially aimed at developing capabilities similar to Intuit, Inc.’s Quicken application, but also has features for small business accounting.
* [hledger](https://hledger.org/) - Easy-to-use command-line/curses/web plaintext accounting tool.
* [HomeBank](http://homebank.free.fr/en/index.php) - HomeBank is a free software that will assist you to manage your personal accounting.
* [KMyMoney](https://kmymoney.org/) - KMyMoney is the personal finance manager by KDE. Its operation is similar to Microsoft Money and Quicken.
* [Skrooge](https://skrooge.org/) - A personal finances manager, powered by KDE.
* [cointop](https://github.com/cointop-sh/cointop) - A fast and lightweight interactive terminal based UI application for tracking cryptocurrencies.
* [ledger](https://github.com/Correia-jpv/fucking-awesome-cli-apps/blob/main/ledger-cli.org) - Powerful, double-entry accounting system on the terminal
*    [moeda](https://github.com/thompsonemerson/moeda)) - Foreign exchange rates and currency conversion.
* [cash-cli](https://github.com/xxczaki/cash-cli)) - Convert Currency Rates.
* [cointop](https://github.com/miguelmota/cointop)) - Track cryptocurrencies.
* [ticker](https://github.com/achannarasappa/ticker)) - Stock ticker.
* [hledger](https://github.com/simonmichael/hledger) - A is fast, reliable, free, multicurrency double-entry accounting software to track money, investments, cryptocurrencies, time, or any other quantifiable commodity; uses a future-proof plain text file format.
* [ledger](https://github.com/ledger/ledger) - A powerful, double-entry accounting system from the command-line; it uses a simple yet powerful text syntax to specify the items to account.
* [paycon](https://github.com/arcorion/paycon) - Converts pay amounts between different time units.
* [moeda](https://github.com/thompsonemerson/moeda) - A foreign exchange rates and currency conversion using the command line.
* Payments    
* [Electrum](https://electrum.org/) - Lightweight Bitcoin client that provides wallet recovery, decentralized servers, and offline storage. ([MIT](https://github.com/spesmilo/electrum/blob/master/LICENCE))    
* [GNU Taler](https://taler.net/) - Cash-like system for online payments. ([GNU GPL](https://taler.net/en/developers.html))
* [Lakshmi](https://github.com/sarvjeets/lakshmi) - Investing library and command-line interface inspired by the Bogleheads philosophy.
* [Quoter](https://github.com/frossm/quoter) - The console based stock quote tool.
* `[cointop` - Track crypto prices](https://dev.to/lissy93/cli-tools-you-cant-live-without-57f6#cointophttpsgithubcomcointop-shcointop-track-crypto-prices)
* [Ticker](https://github.com/achannarasappa/ticker) - Terminal stock watcher and stock position tracker.
* [ticker](https://github.com/achannarasappa/ticker) — Terminal stock ticker with live updates and position tracking
* [cointop](https://github.com/miguelmota/cointop) - The fastest and most interactive terminal based UI application for tracking cryptocurrencies.
* [ledger](https://github.com/ledger/ledger) - Command line accounting
* [cointop](https://github.com/miguelmota/cointop) - The fastest and most interactive terminal based UI application for tracking cryptocurrencies.
* [GNUKhata](https://gnukhata.org/) - Open source accounting software.      
#### Cryptography   
* [HASHA CLI](https://github.com/sindresorhus/hasha-cli) - Hashing made simple. Get the hash of text or stdin.
* [pass](https://www.passwordstore.org/) - Manage passwords from the command line with GPG encryption and optional git integration.
* `2915⭐`**  **`187🍴` [stegcloak](https://github.com/kurolabs/stegcloak)) - Hide secrets with invisible characters in plain text securely.
* [Age](https://github.com/FiloSottile/age) - Simple, Modern, Secure encryption tool.
            
* [HASHA CLI](https://github.com/sindresorhus/hasha-cli) - Hashing made simple. Get the hash of text or stdin.    
* [pass](https://www.passwordstore.org/) - Manage passwords from the command line with GPG encryption and optional git integration.
        -    [stegcloak](https://github.com/kurolabs/stegcloak)) - Hide secrets with invisible characters in plain text securely.    
* [Age](https://github.com/FiloSottile/age) - Simple, Modern, Secure encryption tool.
#### Telegram Notes
* https://console.cloud.google.com/compute/instances?project=telegram-routines-bot 
* [RemindMeLater/remindmelater.py at main · 22TNT/RemindMeLater](https://github.com/22TNT/RemindMeLater/blob/main/remindmelater.py)
* [reminder_bot/main.py at master · aminsaedi/reminder_bot](https://github.com/aminsaedi/reminder_bot/blob/master/main.py)
* [Deploy Telegram Bot on Google Cloud Platform](https://programmingforgood.medium.com/deploy-telegram-bot-on-google-cloud-platform-74f1f531f65e)
    
    ssh-keygen -t rsa
    
    cat ~/.ssh/id_rsa.pub 
    
    → copy to gh
    
    Passphrase: github
* https://codecapsules.io/docs/comparisons/comparing-telegram-bot-hosting-providers/                 
* [ ] https://blog.devgenius.io/create-and-deploy-your-telegram-bot-here-entirely-free-757d5d5e8099        
* [ ] https://towardsdatascience.com/how-to-deploy-a-telegram-bot-using-heroku-for-free-9436f89575d2        
* [ ] https://dashboard.heroku.com/apps        
* [ ] https://towardsdatascience.com/build-a-real-time-shipment-tracking-tool-using-a-telegram-bot-beb6ab29fca3        
* [ ] https://core.telegram.org/bots/samples        
* [ ] https://core.telegram.org/bots/api        
* https://github.com/rhnvrm/tg-taskwarrior-bot        
* https://github.com/cedricbousmanne/telegram-taskwarrior        
* [ ] https://github.com/Ninlives/taskwarrior-telegram-bot
* https://www.freecodecamp.org/news/how-to-create-a-telegram-bot-using-python/ 
* https://thepythoncorner.com/posts/2021-01-16-how-create-telegram-bot-in-python/ 
* https://dspyt.com/simple-telegram-bot-in-python-hosted-easily-on-heroku 
#### Notion Notes
#### Notion Updater
* https://www.zenrows.com/blog/headless-browser-python 
#### Kanban
* [ ] https://github.com/Hirschiii/tw-Kanban
* [ ] [taskwarrior-kanban](https://github.com/j-jith/taskwarrior-kanban)
* [ ] [kanbanwarrior](https://github.com/keigezellig/kanbanwarrior)
* [ ] [taskban](https://github.com/lyz-code/taskban)
* [ ] [kanban4taskwarrior](https://github.com/bmejias/kanban4taskwarrior)
* [ ] [kanbanwarrior](https://github.com/CourrierGui/kanbanwarrior)
* [ ] [taskwarrior-terminal-kanban](https://github.com/contrun/taskwarrior-terminal-kanban)
* [ ] [vim-taskwarrior-kanban](https://github.com/j-jith/vim-taskwarrior-kanban) 
## Potential Software Dependencies/ Integrations
### Tier 1 - Phenomenal
* brick, optparse-applicative, refined, aeson, aeson-schema
* https://nikita-volkov.github.io/refined/
### Tier 2 - Quite Excellent
* $$$ https://github.com/srid/emanote
### Tier 3 - Very Good
* inthe.am
### Tier 9 - Maybe Someday
## Other
### Haskell Stuff
* https://nikivazou.github.io/lh-course/book.pdf 
* https://nikivazou.github.io/lh-course/ 
* https://typeclasses.com/phrasebook
### Signal Tools
* https://github.com/boxdot/gurk-rs 
* https://github.com/AsamK/signal-cli
* https://github.com/filipre/signalbot
* https://github.com/filipre/signalbot-example 
* https://github.com/lwesterhof/semaphore
* https://github.com/bbernhard/signal-cli-rest-api
### TUI Resources / Inspirations / Potential Dependencies
* [ ] https://github.com/poetaman/arttime
* [ ] https://github.com/saulpw/visidata
* [ ] https://github.com/actuday6418/Diary
* [ ] https://github.com/max-niederman/ttyper
* [ ] https://github.com/sunjon/stylish.nvim
* [ ] https://github.com/vimwiki/vimwiki
* [ ] [xplr](https://xplr.dev/)
* [Typer](https://typer.tiangolo.com/)
* [Click | The Pallets Projects](https://palletsprojects.com/p/click/)
* [Programmer s Guide to Ncurses](https://books.google.gr/books?id=Htff8VRO-UEC&printsec=frontcover&hl=el&source=gbs_ge_summary_r&cad=0#v=onepage&q&f=false)
* [Reddit - Which is Best TUI file manager](https://www.reddit.com/r/commandline/comments/11d74x1/which_is_best_tui_file_manager/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
* [LTUI v2.2 released, A cross-platform terminal ui library based on Lua](https://tboox.org/2020/11/19/ltui-v2.2/)
* [learnbyexample/TUI-apps: Terminal User Interface (TUI) apps](https://github.com/learnbyexample/TUI-apps)
* [All books bundle](https://learnbyexample.gumroad.com/l/all-books/)
* [How to create dialog boxes in an interactive shell script](https://www.xmodulo.com/create-dialog-boxes-interactive-shell-script.html)
* [tvix - depot - Sourcegraph](https://cs.tvl.fyi/depot/-/tree/tvix)
* [NLnet; Tvix](https://nlnet.nl/project/Tvix/)
* https://github.com/libsdl-org/SDL
* [ncurses guide](https://jbwyatt.com/ncurses.html)
* https://wiki.libsdl.org/
* https://tldp.org/HOWTO/NCURSES-Programming-HOWTO/
* [ ] https://github.com/fdehau/tui-rs → https://github.com/orhun/rust-tui-template
* [ ] https://github.com/rivo/tview/
* [ ] https://github.com/ArthurSonzogni/FTXUI
* [ ] https://github.com/Textualize/textual        
* https://www.willmcgugan.com/blog/tech/post/textual-progress/        
* https://www.youtube.com/@WillMcGugan
* [ ] https://github.com/dankamongmen/notcurses
* [ ] https://github.com/jroimartin/gocui
* [ ] https://github.com/jwlodek/py_cui
* [ ] https://github.com/jtdaugherty/brick
* [ ] https://github.com/ansiwave/nimwave
* [ ] https://github.com/gdamore/tcell
* [ ] https://github.com/Cubified/tuibox
* [ ] https://github.com/ceccopierangiolieugenio/pyTermTk
* [ ] https://github.com/yaronn/blessed-contrib
* [ ] https://github.com/bczsalba/pytermgui
* https://github.com/Cubified/tuibox
* https://mrossinek.gitlab.io/programming/testing-tui-applications-in-python/ 

# Productivity and Lifestyle (FROM SOFTWARE LISTS)

## Miscellaneous
* https://github.com/creativecreature/pulse
* (2) [khard](https://github.com/lucc/khard) - console vcard client
* (2) [nebokrai]()
* (2) ❤ [👉](https://apps.timwhitlock.info/emoji/tables/unicode#emoji-modal)  [🏁](https://apps.timwhitlock.info/emoji/tables/unicode#emoji-modal)https://github.com/AppFlowy-IO/AppFlowy - [Appflowy](https://appflowy.io/) - just needs cloud setup, vim keybindings, and customizable colors → on the way? [shortcuts](https://docs.appflowy.io/docs/appflowy/community/appflowy-mentorship-program/mentorship-2022/mentee-projects/shortcuts-and-customized-hotkeys-for-appflowy) and [color themes](https://docs.appflowy.io/docs/appflowy/community/appflowy-mentorship-program/mentorship-2022/mentee-projects/custom-themes) - shortcuts may require further hacking, or maybe just a kanata/other layer on top
* (2) [vdirsyncer,](https://github.com/pimutils/vdirsyncer)
* (2) [fluxgui](https://github.com/xflux-gui/fluxgui)← uses[redshift](https://github.com/jonls/redshift)- light adjuster
* (2.5) ❤ [🎹 🎊](https://apps.timwhitlock.info/emoji/tables/unicode#emoji-modal)[khal](https://github.com/pimutils/khal)→ integrate with Nebokrai (in Python) → same developer:
   | (2.5)
* [calcurse](https://github.com/lfos/calcurse)- https://calcurse.org/ - good-looking interface
   | (2.5)
* [girok](https://github.com/noisrucer/girok)- nice TUI, written in Python → look at codebase, use with planager? also[girokserver](https://github.com/noisrucer/girokserver)- even makes me rethink whether Python might me a good productivity app / TUI language, after all - nothing about color configs → fork and add config settings, then MR
* (2) [taskwarrior,](https://github.com/GothenburgBitFactory/taskwarrior,)https://github.com/GothenburgBitFactory/taskserver.[timewarriorhttps://github.com/GothenburgBitFactory/tasklib](https://github.com/GothenburgBitFactory/timewarriorhttps://github.com/GothenburgBitFactory/tasklib)→ integrate with planager?
* (5) [taskell](https://github.com/smallhadroncollider/taskell)→ interesting because of codebase; kanban interface also nice → integrate with planager
* (5) [Sandman-Lite](https://github.com/alexanderepstein/Sandman-Lite)(preferred to[Sandman)](https://github.com/alexanderepstein/Sandman))- [Sandman](https://alexanderepstein.github.io/Sandman/) - Lets you know when to turn off the computer and sleep based on calculated sleep cycles. ([MIT](https://github.com/alexanderepstein/Sandman/blob/master/License.md)) → [good source](https://sleepopolis.com/calculators/sleep/)
* (5) ❤ [todoman](https://github.com/pimutils/todoman) → see https://icalendar.org/, https://icalendar.org/RFC-Specifications/iCalendar-RFC-5545/[specs](https://datatracker.ietf.org/doc/html/rfc5545) -> integrate with Nebokrai
* (5) ❤ [uhabits](https://github.com/iSoron/uhabits) -> borrow ideas and elements for Nebokrai / fork and adapt / integrate
* (5) [ttdl](https://github.com/VladimirMarkelov/ttdl)→ integrate with planager
* (5) [todo](https://github.com/Axarva/todo)
* (5) [xit](https://github.com/jotaen/xit)https://xit.jotaen.net/
  - (5) [nomxit](https://github.com/sum12/nomxit) (rust parser)
  - (5) [stage-left](https://github.com/chris48s/stage-left)
  - (5) [xit2md](https://github.com/chris48s/xit2md)
* (5) [node-did](https://github.com/chrisallenlane/node-did)- maybe fork and update, or better yet, port to another language
* (5) ❤ [✅ 🎊](https://apps.timwhitlock.info/emoji/tables/unicode#emoji-modal) http://todotxt.org/ → integrate with planager
* (5) [dijo](https://github.com/nerdypepper/dijo) - scriptable curses-bases habit tracker in Rust
* (5) [kuskus](https://github.com/kuskusapp/kuskus) https://kuskus.app/
* (5) [chef]() - application to plan meals using a database of recipes and an inventory list


## 2nd Brain
* (2.5)
* [jrnl](https://github.com/jrnl-org/jrnl)→ integrate with planager
   | https://xwmx.github.io/nb/
   | https://github.com/dnote/dnote
* ( ) https://wiki.dendron.so/ → https://github.com/dendronhq/awesome-dendron
* ( ) https://github.com/mickael-menu/zk
* ( )[Zettelkasten](https://github.com/Zettelkasten-Team/Zettelkasten)- http://zettelkasten.danielluedecke.de/  (GUI)
* ( )[TreeTag](https://github.com/doug-101/TreeTag)https://github.com/doug-101/TreeLine_mobilehttps://github.com/doug-101/TreeLine (GUI)
* ( ) [Freemind](https://freemind.sourceforge.io/wiki/index.php/Main_Page)
* ( ) https://joplinapp.org/ - https://johnfactotum.github.io/foliate/
* ( ) https://tiddlywiki.com/
* ( ) https://gitjournal.io/pricing/ https://gitjournal.io/
* ( ) https://www.qownnotes.org/
→  [Video on 2nd Brain Selection](https://www.youtube.com/watch?v=XRpHIa-2XCE) 

## Convenience, Media, Learning Tools (GUI)
* (2) [Anki](https://apps.ankiweb.net/) - Powerful, intelligent flash cards which makes remembering things easy.
* (2)[fsrs4anki](https://github.com/open-spaced-repetition/fsrs4anki)-  https://github.com/open-spaced-repetition/fsrs4anki/wiki

## Bookmarks
* (2)[Buku -](https://github.com/jarun/Buku -)Powerful command-line bookmark manager → fork https://github.com/peterjschroeder/bukut
* (5)[linksnatch](https://github.com/amitmerchant1990/linksnatch)[https://github.com/amitmerchant1990/linksnatch/blob/main/README.md →](https://github.com/amitmerchant1990/linksnatch/blob/main/README.md)[docker-linksnatch](https://github.com/varunsridharan/docker-linksnatch)(bookmark saving tool)
* (5)[foxy -](https://github.com/s-p-k/foxy -)Plain text bookmarks for Firefox and surf browsers. → make for qb?

prod * [](https://blog.appflowy.io/appflowy-2nd-anniversary-and-2023-roundup/) 
prod * [](https://github.com/jgm/djot
prod * [](https://www.omgubuntu.co.uk/2024/02/wunderlist-returns-as-superlist-more-or-less)
prod * [awesome-productivity-software](https://github.com/areknawo/awesome-productivity-software)
prod * [awesome-productivity](https://github.com/jyguyomarch/awesome-productivity)
prod * [cafe](https://github.com/zbeaver/cafe) Keep Your TODO List & Notes Simple With Dooit - YouTube 
prod * [Community is the modern self-host knowledge management platform | Documize](https://www.documize.com/community)
prod * [dooit](https://github.com/kraanzu/dooit) Elevate Your Task Management With Ease 
prod * [GothenburgBitFactory/taskwarrior: Taskwarrior - Command line Task Management](https://github.com/GothenburgBitFactory/taskwarrior)
prod * [Keep Your TODO List & Notes Simple With Dooit](https://www.youtube.com/watch?v=hI4On2HPElc) 
prod * [logseq](https://logseq.com/)
prod * [OPEN SOURCE alternatives to the MOST POPULAR productivity apps!](https://www.youtube.com/watch?v%3DP8accXNcwjs)
prod $$$$ * [Super Productivity – a to do list to get your head free | Super Productivity](https://super-productivity.com/) [super-productivity](https://super-productivity.com/)
prod appflowy * [Self-hosting AppFlowy for free Using Supabase - AppFlowy Docs](https://docs.appflowy.io/docs/guides/appflowy/self-hosting-appflowy-using-supabase)
prod cli * [prioritize ](https://github.com/ralphbean/prioritize)
prod cli * [TaskLite: A CLI task manager built with Haskell and SQLite : r/commandline](https://www.reddit.com/r/commandline/comments/f8io2v/tasklite_a_cli_task_manager_built_with_haskell/)
prod edu * [anki/blob/main/docs/contributing.md](https://github.com/ankitects/anki/blob/main/docs/contributing.md) 
prod edu * [mochi](https://mochi.cards/)
prod home * [](https://www.home-assistant.io/integrations/matrix/) Autogen video 
prod home * [Home Assistant](https://www.home-assistant.io/)
prod home * [home-assistant](https://github.com/home-assistant) 
prod home * [www.home-assistant](https://www.home-assistant.io/) 
prod mail * [](https://github.com/gburd/isync
prod mail * [](https://wiki.archlinux.org/title/Msmtp
prod notes * [](https://flotes.app/home/notebooks/getting-started/edit_notes/introduction)
prod notes * [Daniele-rolli/Beaver-Notes](https://github.com/Daniele-rolli/Beaver-Notes)
prod notes * [gitit: Wiki using happstack, git or darcs, and pandoc.](https://hackage.haskell.org/package/gitit)
prod notes * [www.primenote](https://www.primenote.cc/)
prod org * [](https://www.reddit.com/r/emacs/s/HJemdxK4sd) reorg
prod proj * rewrite tw in go 
prod web * [](https://gethomepage.dev/latest/) A modern, fully static, fast, secure fully proxied, highly customizable application dashboard with integrations for over 100 services and translations into multiple languages. Easily configured via YAML files or through docker label discovery.

# For Roadmaps
* https://www.google.com/search?channel=fs&client=ubuntu&q=leet+code+solutions
* https://leetcode.com/problemset/all/ 
* https://byucs110.org/
* [Beginning Bazel: Building and Testing for Java, Go, and More](https://en.de1lib.org/book/5397976/f53e23)

collect D books and resources, add to Roadmaps and Drive

add Software Architecture Patterns book
* [Build Systems With Go: Everything a Gopher must know](http://libgen.is/book/index.php?md5=3C72718EFA688F90B041DE00E90E95AE)
* [Core Bazel: Fast Builds For Busy People](https://en.de1lib.org/book/17300626/9c46f7)

Epictetus
* [Practical System Programming for Rust Developers: Build fast and secure software for Linux/Unix systems with the help of practical example](http://libgen.is/book/index.php?md5=46C9B5B1BED7E89C1326087FB6224676)
* [Build Your Own Programming Language: A programmer's guide to designing compilers, interpreters, and DSLs for solving modern computing problems](http://library.lol/main/C8DD630A20C1864FC30682992A6A86EE)
* [A Hunter-Gatherer's Guide to the 21st Century: Evolution and the Challenges of Modern Life](http://library.lol/main/A4B2752A879B2A38FD0D0DBC7194EAB6)

Baggini ethics book in some language to Roadmaps

add C++ für Dummies to Roadmaps
* [Crafting Interpreters](http://library.lol/main/B91B4DD0DD5A234BD83BE0ED93C28139)
* https://devguide.python.org/
* [The Java Virtual Machine Specification. Java SE 21 Edition](https://docs.oracle.com/javase/specs/jvms/se21/jvms21.pdf)
* https://en.cppreference.com/w/cpp
* https://gcc.gnu.org/onlinedocs/gcc-12.1.0/gcc.pdf
* https://shuzhanfan.github.io/
* https://www.manning.com/books/how-to-read-java
* [Learning Cython Programming: Expand your existing legacy applications in C using Python](http://library.lol/main/93706512953BDC218DEC9B08928BA511)
* [Learning Object-Oriented Programming: Explore and crack the OOP code in Python, JavaScript, and C#](http://library.lol/main/F485A9E07966E40D96382FF767A0271D)
* [Modern Software Engineering: Doing What Works to Build Better Software Faster](http://library.lol/main/BBDB31ABE5C9D28DB49AFBAD040508CE)
* [Python Testing with pytest: Simple, Rapid, Effective, and Scalable](http://library.lol/main/125561C33F4FDE6E540B5F6664DEE020)

Smola book
* [Software Build Systems: Principles and Experience](http://library.lol/main/9DE736557A522CCA3434F2B4E254AF07)
* [The Art of Readable Code](http://libgen.rs/book/index.php?md5=149128E47C5CEA6BE986BEBF001ECC5A)
* [Visually Explained](https://www.youtube.com/channel/UCoTo2gtN527CXhe7jbP6hUg)
* [Working effectively with legacy code](http://library.lol/main/2C3232C7E7BBC3C19011DD22AD42A873)
* [Introduction to numerical programming: a practical guide for scientists and engineers using Python and C/C++](http://library.lol/main/4972CB31DAB7F45914FBA5DB689067AE)
* https://build2.org/

look for books and articles on psychology and stoicism, evolution and why people worry about things they cannot control

look for books and articles on the psychology of wealth and inequality

* Sort through and eventually delete this page
*Darwin Among the Machines* and *Turing’s Cathedral*

Software Architect’s Handbook: Become a successful software architect by implementing effective architecture concepts

Облачные архитектуры разработка устойчивых и экономичных облачных приложений.pdf
* [Структура и интерпретация компьютерных программ](http://library.lol/main/4D228E9600C4588BC0EA11CBD1225203)
* https://byndyu.ru/antifragileit
* [Gerald Jay Sussman books](http://libgen.rs/search.php?&req=+Gerald+Jay+Sussman&phrase=1&view=simple&column=author&sort=year&sortmode=DESC)

Pragmatic Programmers Functional Programming Bundle
* https://www.rheinwerk-verlag.de/openbook/?GPP=openbook

Грокаем технологию Биткоин

