# Nebokrai

use brick, optparse-applicative, refined, aeson, aeson-schema

excellent: https://github.com/jonascarpay/template-haskell https://github.com/jonascarpay/template-haskell

https://typeclasses.com/phrasebook

https://nikivazou.github.io/lh-course/book.pdf 

https://nikivazou.github.io/lh-course/ 

https://nikita-volkov.github.io/refined/

https://github.com/NorfairKing/smos $$$$$$$$$ 

https://docs.smos.online/ $$$$$$$$$

→ make nebokrai usable as a plugin/integration for smos?

- [Intray: An Inbox system](https://intray.cs-syd.eu/)
- [Tickler: A Tickler system](https://tickler.cs-syd.eu/)
- [Spaced out: A spaced repetition tool](https://github.com/NorfairKing/sparep)
- [Habitscipline: A habit manager](https://github.com/NorfairKing/habitscipline)

Add daily (yesterday) review to tracking feature → circular feedback, as review requires editing declaration, but thisis a feature, rather than a bug or compromise

Include commands such as `nebokrai check` to ensure inputs and outputs are in a consistent state → add optimizations such as caching and using time last edited → make certain files read-only by all except nebokrai user


* (horizon, +[consilium](https://en.wiktionary.org/wiki/consilium), ganttouchthis, taskifist, roadmapper)


## To Sort
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


* Elevate Your Task Management With Ease - YouTube https://www.youtube.com/watch?v=U4pGz4KI1J0&t=12s&pp=2AEMkAIB
* [Tinycare-Tui](https://www.reddit.com/r/golang/s/fVY4hoTMYY)


* -------------------------------------------------------------------------------------------------------------


* best tasks plugin in obsidian https://www.youtube.com/watch?v=quXNtjTe5WE 


* nebokrai $$$$$$$$$ https://smos.online/ 
* https://julian.digital/2023/07/06/multi-layered-calendars/


* Spaced repetition systems can be used to program attention https://notes.andymatuschak.org/zB92WZZ5baBHKZPPbWMbYEv  
* https://discord.com/channels/834325286664929280/877666474888675368/1222613062796705862
* https://julian.digital/2023/07/06/multi-layered-calendars/


## Design and Architecture Notes
    
    
### Overall
    
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
    
## Planning
    
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
    
## Scheduling
    
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
    
## Planning and Scheduling (shared)
    
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
    
## Tracking


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


## Sync, Multi-Device, Etc.


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


### Signal


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


    
* old
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
* [ ] language bindings: https://github.com/jubnzv/go-taskwarrior,  https://github.com/ralphbean/taskw, https://github.com/coddingtonbear/python-taskwarrior
* [ ] hooks: https://github.com/mrVanDalo/taskwarrior-hooks *****, https://github.com/bergercookie/tw-hooks
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


* Telegram
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
    
    # Notion Updater - Cloud
            * https://www.zenrows.com/blog/headless-browser-python 
    
* Scheduler
    
    
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
    


* Inspirations / To Use:
    * https://github.com/schmee/habu 
    * [From No Org to Neorg - YouTube](https://www.youtube.com/playlist?list=PLx2ksyallYzVI8CN1JMXhEf62j2AijeDa)
    * https://github.com/tools-life/taskwiki
    * https://github.com/skbolton/neorg-taskwarrior
    * https://github.com/Klafyvel/Norg.jl 
    * https://github.com/yanick/nvim-taskwarrior 
    * https://github.com/ribelo/taskwarrior.nvim 
    * https://github.com/nfrid/due.nvim 
    * https://github.com/wthollingsworth/pomodoro.nvim 
    * https://github.com/dbinagi/nomodoro 
    * https://github.com/jackMort/pommodoro-clock.nvim
    * https://github.com/jakethekoenig/tmux-pom?
    * https://github.com/poljar/matrix-nio
    * https://gotify.net/ 


* [ ] https://github.com/timeopochin/GanTTY
* [ ] https://github.com/vit-project/vit
* [ ] https://github.com/Textualize/textual 
* → example: https://github.com/Cvaniak/NoteSH
* → https://github.com/Textualize/textual/discussions/165
* [ ] [Taskwarrior](https://taskwarrior.org/) + [inthe.am](https://inthe.am/configure/synchronization) + https://github.com/bgregos/foreground        
* [ ] [taskwarrior-tui](https://github.com/kdheepak/taskwarrior-tui)        
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
    * [taskwarrior-inthe.am](https://github.com/coddingtonbear/taskwarrior-inthe.am)
    * [task-dashboard](https://github.com/8ware/task-dashboard)
    * [gnome-extension-taskwarrior](https://github.com/sgaraud/gnome-extension-taskwarrior)
    * [pomodoro-warriors](https://github.com/cf020031308/pomodoro-warriors)
    * [tasknote](https://github.com/mikebobroski/tasknote)
    * [pomodoro-warriors](https://github.com/cf020031308/pomodoro-warriors)
    * [taskshell](https://github.com/GothenburgBitFactory/taskshell)**
* [ ] https://github.com/kstenschke/tictac-track
* [ ] https://github.com/klaudiosinani/taskbook
* [ ] https://github.com/darrikonn/td-cli
* [ ] https://github.com/dnote/dnote
* [ ] https://github.com/xwmx/nb
* [ ] https://vhp.github.io/terminal_velocity/
* [ ] 


* Other TUI Inspirations / Potential Dependencies:


* [ ] https://github.com/poetaman/arttime
* [ ] https://github.com/saulpw/visidata
* [ ] https://github.com/actuday6418/Diary
* [ ] https://github.com/max-niederman/ttyper
* [ ] https://github.com/sunjon/stylish.nvim
* [ ] https://github.com/vimwiki/vimwiki
* [ ] [xplr](https://xplr.dev/)


* Features:


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
    - examples
* [ ] https://github.com/Hirschiii/tw-Kanban
* [ ] [taskwarrior-kanban](https://github.com/j-jith/taskwarrior-kanban)
* [ ] [kanbanwarrior](https://github.com/keigezellig/kanbanwarrior)
* [ ] [taskban](https://github.com/lyz-code/taskban)
* [ ] [kanban4taskwarrior](https://github.com/bmejias/kanban4taskwarrior)
* [ ] [kanbanwarrior](https://github.com/CourrierGui/kanbanwarrior)
* [ ] [taskwarrior-terminal-kanban](https://github.com/contrun/taskwarrior-terminal-kanban)
* [ ] [vim-taskwarrior-kanban](https://github.com/j-jith/vim-taskwarrior-kanban)
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


   
* https://medevel.com/tag/productivity/ **
    * https://medevel.com/cuekeeper/
    * https://github.com/pickfire/spt


* Signal Tools
            * https://github.com/boxdot/gurk-rs 
            * https://github.com/AsamK/signal-cli
            * https://github.com/filipre/signalbot
            * https://github.com/filipre/signalbot-example 
            * https://github.com/lwesterhof/semaphore
            * https://github.com/bbernhard/signal-cli-rest-api
    
* Tasks, ToDos
    - [taskwarrior](https://taskwarrior.org/) - A command-line TODO list manager → [taskwarrior](https://github.com/GothenburgBitFactory/taskwarrior) with [vit](https://github.com/vit-project/vit) or taskwarrior-tui (look at https://github.com/klaussinani/taskbook interface)
    - other sources of ideas:    
    - [td-cli](https://github.com/darrikonn/td-cli) - A todo command line manager to organize and manage your todos across multiple projects.    
    - [taskell](https://taskell.app/) - Command-line Trello-like kanban-board/TODO lists.    
    - [Everdo](https://everdo.net/) - TODO list and Getting Things Done® app for all platforms. Beautiful, powerful, not SaaS, free version available.    
    - [Super Productivity](https://super-productivity.com/) - The simple free flexible ToDo List / Time Tracker / personal Jira and Github Task Manager.    
    - [sleek](https://github.com/ransome1/sleek) - Cross platform todo manager based on the todo.txt syntax.    
    - [kanban.bash](https://github.com/coderofsalvation/kanban.bash) - commandline asciii kanban board for minimalist productivity bash hackers (csv-based) → almost usable; incorporate ideas into gtt    
    - [kabmat](https://github.com/PlankCipher/kabmat) - TUI program for managing kanban boards with vim-like keybindings. → excellent interface: use? or adopt ideas?    
    - [dstask](https://github.com/naggie/dstask) - Single binary terminal-based TODO manager with git-based sync + markdown notes per task → keep taskwarrior, but look at this for ideas    
    - [Go For It](http://manuel-kehl.de/projects/go-for-it/) - Go For It! is a simple and stylish productivity app, featuring a to-do list, merged with a timer that keeps your focus on the current task. → idea    
    - [Redmine](https://github.com/redmine/redmine) - a flexible project management web application written using Ruby on Rails    
    - [Planner](https://useplanner.com/) - Planner keeps track of all your tasks, projects, and goals in one beautifully simple place. → borrow interface ideas?
        - 
        
    - [Todo.txt](http://todotxt.com/) - Todo.txt is a set of focused editors which help you manage your tasks with as few keystrokes and taps possible.
            * https://github.com/manyids2/taskwar.nvim
    
* Time Tracking and Timers
    - [Timewarrior](https://github.com/GothenburgBitFactory/timewarrior) - A time tracking utility that offers simple stopwatch features as well as sophisticated calendar-based backfill, along with flexible reporting.
    - Interface ideas
        -    [moro](https://github.com/omidfi/moro)) - Simple tool for tracking work hours.    
    - [Timetrap](https://github.com/samg/timetrap) - A simple command line time tracker written in Ruby. It provides an easy to use command line interface for tracking what you spend your time on.
        
    - [bartib](https://github.com/nikolassv/bartib) - A simple timetracker for the command line. It saves a log of all tracked activities as a plaintext file and allows you to create flexible reports.
    - [ActivityWatch](https://activitywatch.net/) - ActivityWatch is an app that automatically tracks how you spend time on your devices.
    - [Time Cop](https://timecop.app/en/) - A time tracking app that respects your privacy and gets the job done without getting too fancy.
    - [Toggl Track](https://flathub.org/apps/details/com.toggl.TogglDesktop/) - Simple and Intuitive Time Tracking Software with cloud sync.
    - [MyTimer](https://github.com/sepandhaghighi/mytimer) - Simple timer for the terminal with timer-mode and alarm.
    - [Alarm Clock](http://alarm-clock.pseudoberries.com/) - Alarm Clock is a fully-featured alarm clock for your GNOME panel or equivalent.
    - [GNOME Pomodoro](http://gnomepomodoro.org/#download) - A full-featured pomodoro timer for GNOME.
    - [Break Timer](https://wiki.gnome.org/Apps/BreakTimer) - A break timer application for GNOME.
    - [BreakTimer](https://breaktimer.app/) - BreakTimer is a cross platform desktop application with nice UI for managing and enforcing periodic breaks.
    - [RSIBreak](https://apps.kde.org/rsibreak/) - RSIBreak takes care of your health and regularly breaks your work to avoid repetitive strain injury.
    - [Taskade](https://www.taskade.com/downloads) - Real-time organization and collaboration tool for getting things done. Taskade is a unified workspace for team tasks, notes, with integrated video chat available cross-platform and free to use.
    - [Solanum](https://apps.gnome.org/app/org.gnome.Solanum/) - A pomodoro timer for the GNOME desktop.
    -    [Timetrap](https://github.com/samg/timetrap)) - Simple timetracker.
    -    [Watson](https://github.com/TailorDev/Watson)) - Generate reports for clients and manage your time.
    -    [utt](https://github.com/larose/utt)) - Simple time tracking tool.
    - [doing](https://github.com/ttscoff/doing/)) - Keep track of what you’re doing and track what you’ve done.
    - [arbtt](https://github.com/nomeata/arbtt) - (automatic, rule-based time tracker) runs in background, collecting information regarding open windows, focussed ones, etc.; it can be configured to display statistics on the collected data, e.g., figuring out the time spent on one specific window.
    - [Bartib](https://github.com/nikolassv/bartib) - Easy to use time tracking tool for the command line. It saves a log of all tracked activities as a plaintext file and allows you to create flexible reports.
    - [dijo](https://github.com/NerdyPepper/dijo) - Scriptable, curses-based, digital habit tracker.
    - [habitctl](https://github.com/blinry/habitctl) - Minimalist command line tool you can use to track and examine your habits.
    - [utt](https://github.com/larose/utt) - Ultimate Time Tracker - A simple command-line time tracker written in Python.
    - [doing](https://github.com/ttscoff/doing/) - A command line tool for remembering what you were doing and tracking what you've done.
    - [habitmap](https://github.com/shuu-wasseo/habitmap) - A command-line app to track your habits and visualise how committed you are to making or maintaining them with colorful heatmaps.
    - [zeitkatze](https://github.com/leonmavr/zeitkatze) - Simplest stopwatch in a linux console.
    - [Watson](https://github.com/TailorDev/Watson) - Time tracking CLI to know how much time you are spending on your projects. It can generate nice reports for clients.
    - [Moro](https://github.com/omidfi/moro) - A command line tool for tracking work hours, as simple as it can get.
* Calendar
    - Calendar: [remind](https://git.skoll.ca/Skollsoft-Public/Remind) with [wyrd](https://gitlab.com/wyrd-calendar/wyrd/)
    - [khal](https://github.com/pimutils/khal) - CLI and terminal calendar program, able to synchronize with CalDAV servers through [vdirsyncer](https://github.com/pimutils/vdirsyncer).
    - [pal](https://sourceforge.net/p/palcal/code/HEAD/tree/) - Calendar program for Unix/Linux systems that can keep track of events; custom, plain text storage format; interesting and fully functional.
    - [Calcure](https://github.com/anufrievroman/calcure) - Modern TUI calendar and task manager with customizable interface.
    - [calcurse](https://git.calcurse.org/calcurse.git/) - A calendar and scheduling application for the command line. It helps keep track of events, appointments and everyday tasks.
    - [caldr](https://github.com/mrusme/caldr) - A lightweight CLI / TUI calendar that supports CalDAV.
    - [Remind](https://git.skoll.ca/Skollsoft-Public/Remind) - Calendar program with possibility to set complex rules to define events; custom, powerful text-based storage format.
    - [remint](https://sr.ht/~mlaparie/remint/) - A simple terminal UI wrapper for D. Skoll's Remind calendar program
    - [peroutine](https://github.com/UlyssesZh/peroutine) - Remind you of periodical events. The period can be any positive integer of days, so work around the fact that the number of days in a week is prime.
    - [Wyrd](https://gitlab.com/wyrd-calendar/wyrd) - Curses front-end for [Remind](https://www.roaringpenguin.com/products/remind) written in OCaml with vertically scrollable time table.
    - [vdirsyncer](https://github.com/pimutils/vdirsyncer) - CalDAV synchronization program.
    -    [birthday](https://github.com/IonicaBizau/birthday)) - Know when a friend's birthday is coming.
    - [calcurse](https://calcurse.org/) - A calendar and scheduling application for the command line.
    - [California](https://wiki.gnome.org/Apps/California) - Complete Calendar app replacement which uses natural language for creating events.
    - [Kalendar](https://apps.kde.org/kalendar/) - Kalendar is a calendar application that allows you to manage your tasks and events.
    - [avail](https://github.com/mufeez-amjad/avail) - Find available times between all your calendars.
    - [conrad](https://github.com/vinayak-mehta/conrad) - Track conferences and meetups.
* Contacts
    - [khard](https://github.com/lucc/khard) - Console carddav client written in Pyhton.
    - [addrb](https://github.com/mrusme/addrb) - A lightweight CLI / TUI address book that supports CardDAV.
    - [ppl addressbook](https://github.com/henrycatalinismith/ppl) - `ppl` is free software made out of other free software. It's built on top of Ruby and Git, and the completely free vcard address book format.
* Résumé
            * https://github.com/przpiw/PDFResumeBuilder 
            * https://jsonresume.org/         
    - [ancv](https://github.com/alexpovel/ancv) - Renders your (JSON) resume/CV for online & pretty terminal display.
* Misc
    - [arttime](https://github.com/reportaman/arttime) - Beauty of text art meets functionality of clock, timer, pomodoro++ time manager
    - [buku](https://github.com/jarun/buku) - A powerful bookmark manager written in Python3 and SQLite3.
    - [task-manager](https://github.com/lingtalfi/task-manager) - Execute all your scripts with just two or three keystrokes.
    - [Workrave](http://www.workrave.org/) - A program that assists in the recovery and prevention of Repetitive Strain Injury (RSI).
    - [Ambient Noise](https://github.com/costales/anoise) - An ambient noise generator for Linux.
    - [Blanket](https://apps.gnome.org/app/com.rafaelmardojai.Blanket/) - Improve focus and increase your productivity by listening to different sounds.
    - [f.lux](https://justgetflux.com/linux.html) - A program that reddens your display to help you sleep better.
    - [Redshift](http://jonls.dk/redshift/) - Redshift adjusts the color temperature of your screen according to your surroundings. This may help your eyes hurt less if you are working in front of the screen at night.
* Note taking
    - [jrnl](https://github.com/jrnl-org/jrnl) - A simple command line journal application that stores your journal in a plain text file
    - [Org mode](https://git.savannah.gnu.org/cgit/emacs/org-mode.git) - Super-powerful [Emacs](https://www.gnu.org/software/emacs/) plugin to manage outlines with associated timestamps, priorities, labels, etc.; available views grouped by time (agenda), tags, etc.; plain text storage format.
    - [cadmus](https://github.com/RyanGreenup/cadmus) - Shell Scripts to Facilitate Effective Note Taking.
    - [dn](https://github.com/tomlockwood/dn) - Daily notes command line tool.
    - [dnote](https://github.com/dnote/dnote) - A simple command line notebook for the terminal. It also offers a seamless multi-device sync and a web interface.
    - [eureka](https://github.com/simeg/eureka) - Store your ideas without leaving the terminal.
    - [nb](https://github.com/xwmx/nb) - A command line and local web note‑taking, bookmarking, archiving, and knowledge base application.
    - [idea](https://github.com/IonicaBizau/idea) - A lightweight tool for keeping ideas in a safe place quick and easy.
    - [jot](https://github.com/araekiel/jot) - Jot is a feature-stripped version of Obsidian focused on rapid note management through the terminal. It uses the same format of storage as Obsidian.
    - [kb](https://github.com/gnebbia/kb) - A minimalist knowledge base manager.
    - [Noted](https://github.com/torbratsberg/noted) - Notes library, with viewer and shortcuts to add, delete and edit notes.
    - [Xmind](https://www.xmind.net/) - A mind mapping tool
    - [NoteSH](https://github.com/Cvaniak/NoteSH) - Sticky notes App in the Terminal, built with Textual, an amazing TUI framework!
    - [Mindforger](https://www.mindforger.com/) - Thinking notebook and Markdown editor.
    - [Standard Unix Notes](https://github.com/Standard-Unix-Notes/unix-notes) - GPG Encrypted Notes/Notebook manager for BSD/Linux.
    - [posce](https://github.com/posce/posce) - A note-taking toolkit for your command line.
    - [Terminal velocity](https://github.com/Correia-jpv/fucking-awesome-cli-apps/blob/main/vhp.github.io/terminal_velocity) - A fast note-taking app.
    - [h-m-m](https://github.com/nadrad/h-m-m) - h-m-m (pronounced like the interjection "hmm") is a simple, fast, keyboard-centric terminal-based tool for working with mind maps.
    - [Boostnote](https://boostnote.io/) - Boostnote is an open source note-taking app made for programmers just like you.
    - [Cherrytree](https://www.giuspen.com/cherrytree/) - A hierarchical note taking application, featuring rich text and syntax highlighting, storing data in a single xml or sqlite file.
    - [Org mode](https://orgmode.org/) - Org mode is for keeping notes, maintaining TODO lists, planning projects, and authoring documents with a fast and effective plain-text system.
    - [Logseq](https://logseq.com/) - Logseq is a privacy-first, open-source knowledge base that works on top of local plain-text Markdown and Org-mode files. Use it to write, organize and share your thoughts, keep your to-do list, and build your own digital garden.
    - [Tomboy](https://wiki.gnome.org/Apps/Tomboy) - Tomboy is a desktop note-taking application which is simple and easy to use.
    - [Notes](https://www.get-notes.com/) - A clean simple note taking app for Linux.
    - [Standard Notes](https://standardnotes.com/) - Standard Notes is an end-to-end encrypted note-taking app for digitalists and professionals. Capture your notes, files, and life’s work all in one secure place.
    - [Trilium Notes](https://github.com/zadam/trilium) - Trilium Notes is a hierarchical note taking application with focus on building large personal knowledge bases.
    - [Standard Unix Notes](https://github.com/Standard-Unix-Notes/unix-notes) - GPG Encrypted Notes/Notebook manager for BSD/Linux
    - [Turtl](https://turtlapp.com/) - The secure, collaborative notebook.
    - https://github.com/umangv/indicator-stickynotes
    - [Simplenote](https://simplenote.com/) - A Cross platform notetaking app and Evernote competitor.
    - [QOwnNotes](https://www.qownnotes.org/) - QOwnNotes is a plain-text file notepad and todo-list manager with markdown support and ownCloud / Nextcloud integration.
    - [dnote](https://github.com/dnote/dnote) - A simple command line notebook with multi-device sync and web interface
    - [eureka](https://github.com/simeg/eureka/) -  CLI tool to input and store your ideas without leaving the terminal
    - [Polar](https://getpolarized.io/) - Polar is a personal knowledge repository for PDF and web content supporting incremental reading and document annotation.
* Finance
    - [GnuCash](https://www.gnucash.org/) - GnuCash is a free software accounting program that implements a double-entry bookkeeping system. It was initially aimed at developing capabilities similar to Intuit, Inc.’s Quicken application, but also has features for small business accounting.
    - [hledger](https://hledger.org/) - Easy-to-use command-line/curses/web plaintext accounting tool.
    - [HomeBank](http://homebank.free.fr/en/index.php) - HomeBank is a free software that will assist you to manage your personal accounting.
    - [KMyMoney](https://kmymoney.org/) - KMyMoney is the personal finance manager by KDE. Its operation is similar to Microsoft Money and Quicken.
    - [Skrooge](https://skrooge.org/) - A personal finances manager, powered by KDE.
    - [cointop](https://github.com/cointop-sh/cointop) - A fast and lightweight interactive terminal based UI application for tracking cryptocurrencies.
    - [ledger](https://github.com/Correia-jpv/fucking-awesome-cli-apps/blob/main/ledger-cli.org) - Powerful, double-entry accounting system on the terminal
    -    [moeda](https://github.com/thompsonemerson/moeda)) - Foreign exchange rates and currency conversion.
    -    [cash-cli](https://github.com/xxczaki/cash-cli)) - Convert Currency Rates.
    -    [cointop](https://github.com/miguelmota/cointop)) - Track cryptocurrencies.
    -    [ticker](https://github.com/achannarasappa/ticker)) - Stock ticker.
    - [hledger](https://github.com/simonmichael/hledger) - A is fast, reliable, free, multicurrency double-entry accounting software to track money, investments, cryptocurrencies, time, or any other quantifiable commodity; uses a future-proof plain text file format.
    - [ledger](https://github.com/ledger/ledger) - A powerful, double-entry accounting system from the command-line; it uses a simple yet powerful text syntax to specify the items to account.
    - [paycon](https://github.com/arcorion/paycon) - Converts pay amounts between different time units.
    - [moeda](https://github.com/thompsonemerson/moeda) - A foreign exchange rates and currency conversion using the command line.
    - Payments    
    - [Electrum](https://electrum.org/) - Lightweight Bitcoin client that provides wallet recovery, decentralized servers, and offline storage. ([MIT](https://github.com/spesmilo/electrum/blob/master/LICENCE))    
    - [GNU Taler](https://taler.net/) - Cash-like system for online payments. ([GNU GPL](https://taler.net/en/developers.html))
    - [Lakshmi](https://github.com/sarvjeets/lakshmi) - Investing library and command-line interface inspired by the Bogleheads philosophy.
    - [Quoter](https://github.com/frossm/quoter) - The console based stock quote tool.
    - `[cointop` - Track crypto prices](https://dev.to/lissy93/cli-tools-you-cant-live-without-57f6#cointophttpsgithubcomcointop-shcointop-track-crypto-prices)
    - [Ticker](https://github.com/achannarasappa/ticker) - Terminal stock watcher and stock position tracker.
    - [ticker](https://github.com/achannarasappa/ticker) — Terminal stock ticker with live updates and position tracking
    - [cointop](https://github.com/miguelmota/cointop) - The fastest and most interactive terminal based UI application for tracking cryptocurrencies.
    - [ledger](https://github.com/ledger/ledger) - Command line accounting
    - [cointop](https://github.com/miguelmota/cointop) - The fastest and most interactive terminal based UI application for tracking cryptocurrencies.
    - Crypto
        
        ‣
            
    - [HASHA CLI](https://github.com/sindresorhus/hasha-cli) - Hashing made simple. Get the hash of text or stdin.    
    - [pass](https://www.passwordstore.org/) - Manage passwords from the command line with GPG encryption and optional git integration.
        -    [stegcloak](https://github.com/kurolabs/stegcloak)) - Hide secrets with invisible characters in plain text securely.    
    - [Age](https://github.com/FiloSottile/age) - Simple, Modern, Secure encryption tool.
    - [GNUKhata](https://gnukhata.org/) - Open source accounting software.
* taskwarrior plugins
    - Bash/Shell
        
        ‣
        
        ‣ 
        
    - C
        
        ‣
        
    - Python
        
        ‣
        
        ‣
        
        ‣
        
        ‣
        
        ‣ 
        
        ‣ (see ‣)
        
        ‣
        
        ‣ 
        
        ‣ ***
        
        ‣ 
        
        ‣ 
        
        ‣ - good extension
        
        ‣ 
        
        ‣ 
        
        ‣ 
        
        ‣ 
        
        ‣
        
        ‣
        
        ‣
        
        ‣
        
        ‣ (includes rofi)
        
        ‣
        
        ‣
        
        ‣
        
        ‣
        
        ‣
        
        ‣
        
        ‣ 
        
        ‣
        
        ‣
        
        ‣ 
        
        ‣ 
        
        ‣ (?) 
        
        ‣ (?)
        
        ‣
        
        ‣ - dependency tree in the terminal
        
        ‣ - hook script with remote sync
        
        ‣ 
        
        ‣ 
        
        ‣ 
        
        ‣
        
        ‣
        
        ‣
        
        ‣
        
        ‣
        
        ‣
        
        ‣ 
        
        ‣
        
        ‣
        
        ‣
        
        ‣ 
        
        ‣ → https://habitica.com/static/features 
        
        ‣ 
        
        ‣
        
        ‣ 
        
        ‣
        
        ‣ 
        
        ‣ https://blog.joosten-industries.nl/posts/Kanban-Warrior/  
        
        ‣
        
    - Julia
        
        ‣ 
        
    - Kotlin
        
        ‣ 
        
    - Perl
        
        ‣ → export to Neorg format
        
        ‣ → read and understand, see if at all useful; otherwise, just learn some perl
            
    - [export-csv.pl](https://taskwarrior.org/download/export-csv.pl)    
    - [export-html.pl](https://taskwarrior.org/download/export-html.pl)    
    - [export-ical.pl](https://taskwarrior.org/download/export-ical.pl)    
    - [export-sql.py](https://taskwarrior.org/download/export-sql.py)    
    - [export-tsv.pl](https://taskwarrior.org/download/export-tsv.pl)    
    - [export-xml.pl](https://taskwarrior.org/download/export-xml.pl)    
    - [export-xml.py](https://taskwarrior.org/download/export-xml.py)    
    - [export-xml.rb](https://taskwarrior.org/download/export-xml.rb)    
    - [export-yad.pl](https://taskwarrior.org/download/export-yad.pl)    
    - [export-yaml.pl](https://taskwarrior.org/download/export-yaml.pl)    
    - [import-todo.sh.pl](https://taskwarrior.org/download/import-todo.sh.pl)    
    - [import-yaml.pl](https://taskwarrior.org/download/import-yaml.pl)
    - Dart
        
        ‣
        
        ‣ 
        
    - Elixir
        
        ‣ 
        
    - Ruby
        
        ‣
        
    - Go
        
        ‣
        
    - Rust
* [taskwarrior-tui](https://github.com/kdheepak/taskwarrior-tui)
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
        
    - Lisp
* [projectwarrior](https://github.com/jonathanabennett/projectwarrior)
        
    - Docker
* [taskd](https://github.com/pztrn/taskd) 
* [dock-warrior](https://github.com/codehivetx/dock-warrior) 
* [docker-taskd](https://github.com/jigish/docker-taskd) 
* [taskserver_docker](https://github.com/Ellana42/taskserver_docker) 
* [taskwarrior-container](https://github.com/gistella/taskwarrior-container) 
* [taskwarrior-deployment](https://github.com/csams/taskwarrior-deployment) 
* [taskwarrior-ui-container](https://github.com/jessedearing/taskwarrior-ui-container) 
* [taskwarrior_rest_api](https://github.com/jeka1331/taskwarrior_rest_api) 
        
    - C++
        
        ‣
        
    - C#
        
        ‣
        
    - Haskell
        
        ‣
        
        ‣
        
        ‣
        
    - JS
        
        ‣ 
        
        ‣
        
        ‣ 
        
    - Nim
* [taskopen](https://github.com/jschlatow/taskopen) 
                    * https://github.com/trev-dev/timew-billable 
        
    - Other
        
        ‣
    * https://sma.supermemo.wiki/#/ 
    * [Pricing - WakaTime](https://wakatime.com/pricing)
    * https://github.com/TheRolfFR/activity-tracker 
    * https://github.com/anufrievroman/calcure 
    * https://github.com/AlphabetsAlphabets/actt 
    * [note templates](https://jacobzelko.com/08032021134232-notes-template/#example_of_actual_note)
    * https://github.com/filipre/signalbot
    * https://github.com/wireapp/lithium 
    * https://zulip.com/plans/ 
    * https://sopel.chat/ 
    * https://www.rocket.chat/pricing 
    * https://www.heise.de/tests/Kurztests-Desktop-Uebersetzer-Markdown-Notizbuch-und-Online-Whiteboard-9201345.html 
    * [planager (+ganttouchthis, taskifist)](https://www.notion.so/nebokrai-horizon-consilium-ganttouchthis-taskifist-roadmapper-2d3a6d104fb348c0b63b58087aada71b?pvs=21)
    * [AsamK/signal-cli: signal-cli provides an unofficial commandline, dbus and JSON-RPC interface for the Signal messenger.](https://github.com/AsamK/signal-cli)
    * [bbernhard/signal-cli-rest-api: Dockerized Signal Messenger REST API](https://github.com/bbernhard/signal-cli-rest-api)
    * [JasonShin/fp-core.rs: A library for functional programming in Rust](https://github.com/JasonShin/fp-core.rs)
    * [Encrypted to-do list, habit and mood tracker, journaling and notes app | Lunatask](https://lunatask.app/)
    * [lwesterhof/semaphore: A simple (rule-based) bot library for Signal Private Messenger.](https://github.com/lwesterhof/semaphore)
    * https://github.com/brunocbr/zettel-composer


* TUI Resources
* [Reddit - Which is Best TUI file manager](https://www.reddit.com/r/commandline/comments/11d74x1/which_is_best_tui_file_manager/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
    
    GTT: tui with typer? which dependencies? pure stdlib? -> integration with vit / taskw / taskwarrior -> later: rewrite in Rust?
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
    


* Dependencies / Components:
    - Taskwarrior
    - inthe.am
* [docs](https://intheam.readthedocs.io/en/latest/api/index.html)
        
    - 
            * https://tinydb.readthedocs.io/en/latest/ 
* [taskw](https://github.com/ralphbean/taskw)
    
* Notion SDK, API:
* → switch to https://www.focalboard.com/ ?
* → migrate Notion to AppFlowy?
            * https://www.notion.so/my-integrations 
    
    via Trello?
            * https://taskwarrior.org/docs/hooks_guide/ → [inthe.am](http://inthe.am) webhooks?
            * https://github.com/makenotion/notion-sdk-js
            * https://github.com/ramnes/notion-sdk-py
            * https://github.com/getsyncr/notion-sdk (deprecated)
            * https://github.com/makenotion/notion-sdk-typescript-starter 
    
* Database for ganttouchthis
    
    tinydb
    
    sqlite3?
    
    postgresql?
    


* Foreground 


* Telegram
* Telegram (?)
* Email
            * https://inthe.am/configure/email
    


* Twilio → SMS?


* Zapier?


* → planager (organizers, planners, notion)
* [Whimsical - Work Better, Faster, Together](https://whimsical.com/) 
            * https://ramnes.github.io/notion-sdk-py/ 
            * https://foambubble.github.io/foam/ 
    


* IRC?


* Matrix Tools
    * https://docs.rs/matrix_bot_api/latest/matrix_bot_api/ ****


* Telegram
    * https://github.com/teloxide/teloxide
    * https://github.com/tools-life/taskwiki


* [ ] https://github.com/GothenburgBitFactory/taskwarrior → build on top of by creating an extension / extensions?    * https://kdheepak.com/taskwarrior-tui/


* Next: write nvim plugin/library/neorg module for taskwarrior (’taskifist’)
    * https://taskwarrior.org/tools/ → check ‘lua’ box


* →for Lua
    * https://r-pufky.github.io/docs/apps/taskwarrior.html 
    * https://github.com/ribelo/taskwarrior.nvim 
    * https://github.com/bgregos/foreground
    * https://github.com/cedricbousmanne/telegram-taskwarrior 
    * https://github.com/Ninlives/taskwarrior-telegram-bot 
    * https://github.com/rhnvrm/tg-taskwarrior-bot 


* (Telegram inline keyboard? Add [custom keyboard](https://www.google.com/search?q=add+custom+keyboard+to+android&sxsrf=APwXEde_qAYevpIXgyBDpVjjtVpsAK4Huw:1682273314975&source=lnt&tbs=qdr:y&sa=X&ved=2ahUKEwjvrOq6zMD-AhUCsaQKHZB0BsEQpwV6BAgBEAs&biw=1717&bih=845&dpr=1) for Telegram to include slash and numbers on basic keyboard? → not highest priority)


* live preview
            * https://www.npmjs.com/package/browser-sync 
* [Is there a plugin for seeing a live preview of HTML/CSS/JS?Reddithttps://www.reddit.com › neovim › comments › plggq3](https://www.reddit.com/r/neovim/comments/plggq3/is_there_a_plugin_for_seeing_a_live_preview_of/)
* [data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAASFBMVEVHcEz/RQD/RQD/RQD/RQD/RQD/RQD/RQD/RQD/RQD/RQD/RQD/NAD/PwD/aDr/s5z/nH7/e1b/WyT/xLH/imj/4NX/8ev///9xkjBnAAAADHRSTlMAFFyk2vT9KO//iszHtZsMAAABSElEQVR4AWxSB7aDMAxjg6md7XD/m35s/PqTtmJkSImUMfxjnOZl3bZ1madx+MY+H/DGMe8f9Hiu0GE9x274C77w2hu+mb3x2X/zSDeQGsXYzk/Oh5hiLiQuT44TGlDgzFyvmkRxqsHaCXJASnxdTgSrmMzQgR2JTyQQzHeCLiE51oLIVjIOU0sTloxGPpjUQTkgcMEz+5KIpG0ei9IQHRa+DBwxOVDJMqzqXO/eqwHf77OOYZPN89pb68Na4fGmtkZQY9LSp1IbgW6Tk56MlIQAwix6s9CQWMQ3YRBBQZA8ATXks0yK6mE5WctCukzbqFSvHuYAk201BekLOpSDqD3ZVttWkpeYyZXiUpYqmMP7uFHHVWYtJKEed3NhKAUhReTFX3B2V44IXCwlOiDjX+PnpSUFGP6GK1kj5AllHEJZj8jMSzD7AwBb/yl65xYVzAAAAABJRU5ErkJggg==](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAASFBMVEVHcEz/RQD/RQD/RQD/RQD/RQD/RQD/RQD/RQD/RQD/RQD/RQD/NAD/PwD/aDr/s5z/nH7/e1b/WyT/xLH/imj/4NX/8ev///9xkjBnAAAADHRSTlMAFFyk2vT9KO//iszHtZsMAAABSElEQVR4AWxSB7aDMAxjg6md7XD/m35s/PqTtmJkSImUMfxjnOZl3bZ1madx+MY+H/DGMe8f9Hiu0GE9x274C77w2hu+mb3x2X/zSDeQGsXYzk/Oh5hiLiQuT44TGlDgzFyvmkRxqsHaCXJASnxdTgSrmMzQgR2JTyQQzHeCLiE51oLIVjIOU0sTloxGPpjUQTkgcMEz+5KIpG0ei9IQHRa+DBwxOVDJMqzqXO/eqwHf77OOYZPN89pb68Na4fGmtkZQY9LSp1IbgW6Tk56MlIQAwix6s9CQWMQ3YRBBQZA8ATXks0yK6mE5WctCukzbqFSvHuYAk201BekLOpSDqD3ZVttWkpeYyZXiUpYqmMP7uFHHVWYtJKEed3NhKAUhReTFX3B2V44IXCwlOiDjX+PnpSUFGP6GK1kj5AllHEJZj8jMSzD7AwBb/yl65xYVzAAAAABJRU5ErkJggg==)
    
    10 Sept 2021 — I use markdown-*preview*.*nvim* for getting a *live preview* when editing Markdown files. But is there something similar for web development?
* [Is there a plugin for *live preview* my web projects on ... - Reddit](https://www.reddit.com/r/neovim/comments/uzqx2i/is_there_a_plugin_for_live_preview_my_web/)
    
    18 Jun 2022
*[Live* Server plugin for *vim*/*nvim* : r/*neovim* - Reddit](https://www.reddit.com/r/neovim/comments/w86ash/live_server_plugin_for_vimnvim/)
    
    26 Jul 2022
* [Introducing *live*-command.*nvim*: *preview* the norm ... - Reddit](https://www.reddit.com/r/neovim/comments/xx5hhp/introducing_livecommandnvim_preview_the_norm/)
    
    6 Oct 2022
*[Live* markdown *preview* to PDF : r/*neovim* - Reddit](https://www.reddit.com/r/neovim/comments/w7ki77/live_markdown_preview_to_pdf/)
    
    25 Jul 2022
* https://dev.to/fidelve/using-vim-as-your-main-editor-for-web-development-5a73 
    * https://www.google.com/search?client=firefox-b-d&q=open+source+web+gantt+viewer 
    * https://github.com/litehtml/litehtml 
    * https://github.com/edluffy/hologram.nvim 
    * https://github.com/krivahtoo/silicon.nvim


* links and notes to sort
            * https://activitywatch.net/ 
* [Reddit - Taskwarrior is Perfect](https://www.reddit.com/r/commandline/comments/jcpd9q/taskwarrior_is_perfect/)
* [Productivity Setup with Vimwiki, Taskwarrior and MDwiki: Part 1](https://youtu.be/A1YgbAp5YRc)
* [Why I use qutebrowser and how I configure it - adblocking, note taking, and colors](https://youtu.be/Av8Sfaprcb4)
            * https://www.nand2tetris.org/
* [Crafting the Nyxt Browser](https://www.youtube.com/watch?v=Hvlkca98tyw)
* [Nyxt Is The Most Custo](https://www.youtube.com/watch?v=SVteSEjKytw&t=175s)mizable Web Browser EVER
* [Nyxt Web Browser - Keyboard driven, Lisp](https://www.youtube.com/watch?v=1TydtiWwZgQ&t=116s) Powered, And Does What I
* [Nyxt: The Internet on your terms / Pierre](https://www.youtube.com/watch?v=wCHnb8pvneE) Neidhardt / GambiConf EU
* [EmacsConf 2021: Emacs with Nyxt: extend your](https://www.youtube.com/watch?v=XarwuynpWkA) editor with the power of
* [How to take no](https://www.youtube.com/watch?v=8fmWWgU_gk4)tes in the Nyxt browser?
            * https://www.youtube.com/@nyxtacademy5956
* [Vieb: More Than Jus](https://www.youtube.com/watch?v=6DPDExXs77Q)t A Vim Inspired Browser
* [I'm leaving Firefox, and this is](https://www.youtube.com/watch?v=DgFS1Do_1As) the browser I picked...
    
    ome to the Nyxt Academy!
* [I Should Have Just Used Vimwiki From The Start](https://youtu.be/vBJj7YMVn6I)
* [Big Pile of Vim-like](https://vim.reversed.top/)
* [Luakit Web Browser](https://luakit.github.io/#sec-download)
* [luakit/luakit: Fast, small, webkit based browser framework extensible by Lua.](https://github.com/luakit/luakit)
* [Vimb - A Minimal Browser with Vim like Bindings - YouTube](https://www.youtube.com/watch?v=26xWK35pinA)
* [What Are The Benefits Of Emacs Over Vim? - YouTube](https://www.youtube.com/watch?v=kRkp-uJTK7s)
* [Watch YouTube videos using MPV player - An Easy Guide - LinuxForDevices](https://www.linuxfordevices.com/tutorials/linux/watch-youtube-videos-on-mpv-player)
* [Support URL patterns for more settings (per-domain settings) · Issue #3636 · qutebrowser/qutebrowser](https://github.com/qutebrowser/qutebrowser/issues/3636)
* [davidinspace/qutebrowser_dark_solarized: Dark solarized css stylesheet for qutebrowser. Make the web like your terminal ! :)](https://github.com/davidinspace/qutebrowser_dark_solarized)
* [qutebrowser-themes/onedark.py at master · leosolid/qutebrowser-themes](https://github.com/leosolid/qutebrowser-themes/blob/master/themes/onedark.py)
* [My qutebrowser config](https://gist.github.com/Ape/d0c48b3f7ec9c8efaecf48eaa1e75d0d)
* [List type settings errors · Issue #3104 · qutebrowser/qutebrowser](https://github.com/qutebrowser/qutebrowser/issues/3104)
* [change qutebrowser config editor - Google Search](https://www.google.com/search?client=firefox-b-d&q=change+qutebrowser+config+editor)
* [Where are installed Google Chrome extensions stored locally? - Stack Overflow](https://stackoverflow.com/questions/21475866/where-are-installed-google-chrome-extensions-stored-locally)
* [urxvt - Google Search](https://www.google.com/search?client=firefox-b-d&q=urxvt)
* [equalsraf/neovim-qt: Neovim client library and GUI, in Qt5.](https://github.com/equalsraf/neovim-qt)
* [bodil/vscode-file-browser](https://github.com/bodil/vscode-file-browser)
* [colors - Change Firefox new tab background - Super User](https://superuser.com/questions/1235975/change-firefox-new-tab-background)
* [How to Customize Firefox Reader View for Better Readability - Hongkiat](https://www.hongkiat.com/blog/customize-reader-view-theme-firefox/)
* [Ubuntu Manpage: zathurarc - zathura configuration file](https://manpages.ubuntu.com/manpages/bionic/man5/zathurarc.5.html)
* [Fuco1/zathura-build: zathura + plugins built and run inside docker](https://github.com/Fuco1/zathura-build)
* [jeffkreeftmeijer/vim-numbertoggle: Toggles between hybrid and absolute line numbers automatically](https://github.com/jeffkreeftmeijer/vim-numbertoggle)
* [Backward search in ipython via FZF - Stack Overflow](https://stackoverflow.com/questions/48203949/backward-search-in-ipython-via-fzf)
* [Adding fuzzy history search to IPython · Issue #12231 · ipython/ipython](https://github.com/ipython/ipython/issues/12231)
* [gautam_linux/colours.sh at master · gkotian/gautam_linux](https://github.com/gkotian/gautam_linux/blob/master/scripts/colours.sh)
* [powerline/powerline: Powerline is a statusline plugin for vim, and provides statuslines and prompts for several other applications, including zsh, bash, tmux, IPython, Awesome and Qtile.](https://github.com/powerline/powerline)
* [Welcome to Notifiers documentation! — notifiers 1.3.0 documentation](https://notifiers.readthedocs.io/en/latest/)
            * https://itsfoss.com/appflowy/
            * https://appflowy.gitbook.io/docs/essential-documentation/readme
* [Reddit - [OC] I rewrote pfetch in Rust](https://www.reddit.com/r/unixporn/comments/113tw9u/oc_i_rewrote_pfetch_in_rust/?utm_source=share&utm_medium=android_app&utm_name=androidcss&utm_term=10&utm_content=share_button)
* [GothenburgBitFactory/taskwarrior: Taskwarrior - Command line Task Management](https://github.com/GothenburgBitFactory/taskwarrior)
* [A Powerline configuration for Starship.rs](https://gist.github.com/notheotherben/92302a60f8599ba73f1c2840f3c6d455)
    
    - **Starship
* [starship/starship: ☄🌌️ The minimal, blazing-fast, and infinitely customizable prompt for any shell!](https://github.com/starship/starship)
* [Base16 Designer](http://brianreilly.me/Base16Designer/)
* [Brian Reilly · Entrepreneurial Front-End Web Developer](http://brianreilly.me/)
* [Misterio77/flavours: 🎨💧 An easy to use base16 scheme manager that integrates with any workflow.](https://github.com/misterio77/flavours/#custom-templates-and-schemes)
* [ii.com: qutebrowser Tips and Fragments](https://www.ii.com/qutebrowser-tips-fragments/)
* [ii.com: qutebrowser’s Template config.py](https://www.ii.com/qutebrowser-configpy/)
* [cheatsheet-big.png (PNG Image, 3342 × 2060 pixels) — Scaled (46%)](https://qutebrowser.org/img/cheatsheet-big.png)
* [Misterio77/flavours: 🎨💧 An easy to use base16 scheme manager that integrates with any workflow.](https://github.com/Misterio77/flavours)
* [vifm/vifm-colors: Various colorschemes for vifm file explorer.](https://github.com/vifm/vifm-colors)
* [gtaylor/python-colormath: A python module that abstracts common color math operations. For example, converting from CIE L*a*b to XYZ, or from RGB to CMYK](https://github.com/gtaylor/python-colormath)
* [u/oohay_email2004 replied to your post in r/codereview - isaac.r.riley@gmail.com - Gmail](https://mail.google.com/mail/u/0/#inbox/FMfcgzGrcXqJsBMnzlVBKMwmsLDGFBrL)
* [Automate the Boring Stuff with Python](https://automatetheboringstuff.com/chapter18/)
* [amiof/todo-list-: a todo list create with js and html & css](https://github.com/amiof/todo-list-)
* [Egnod/karakurt: Cookiecuttrer-template for python cli app](https://github.com/Egnod/karakurt)
* [Introduction - Textual](https://textual.textualize.io/)
* [irq0/whatidid: what I do and what I did](https://github.com/irq0/whatidid)
* [Typer](https://typer.tiangolo.com/)
* [Click | The Pallets Projects](https://palletsprojects.com/p/click/)
* [Programmer s Guide to Ncurses](https://books.google.gr/books?id=Htff8VRO-UEC&printsec=frontcover&hl=el&source=gbs_ge_summary_r&cad=0#v=onepage&q&f=false)
* [my productivity workflow 2023!](https://youtu.be/IZX-cDR6IQM)
* [BOOKSTORES: How to Read More Books in the Golden Age of Content](https://youtu.be/lIW5jBrrsS0)
* [my productivity workflow 2023!](https://youtu.be/IZX-cDR6IQM)
* [Taskwarrior is THE task ma](https://www.youtube.com/watch?v=rRTnF-EMey0&t=406s)nagement system you need
* [A Dive into Taskwarrior Ec](https://www.youtube.com/watch?v=tijnc65soEI)osystem with Tomas Babej
* [Command Line Task Management With Taskwarrior an Taskell](https://www.youtube.com/watch?v=Z3FtJ9xzn0g&t=1067s)
* [My Get Things Done (GTD) Task](https://www.youtube.com/watch?v=8I7nQmKAWpM) Management System Using
* [To-Do Lists for Hackers!](https://www.youtube.com/watch?v=5wmcn9-IQE4&t=179s)
* [Taskwarrior Lessons](https://www.youtube.com/watch?v=3iyaS5WwcuQ&list=PLI4gKGOkRTj37BHpZnFBVHDsa3J-dAUVF)
* [How To Use VIT The Curses Based](https://www.youtube.com/watch?v=wY3DJVSWdeI&t=363s) Front End To Taskwarrior
    
    CLI "Digital Assistant"
            * https://www.redhat.com/sysadmin/timewarrior-command-line
* [My Sweet Task Manager Setup (taskwarrior/timewarrior)](https://www.youtube.com/live/ElsF5SqzdIY?feature=share)
* [My Get Things Done (GTD) Task Management System Using TaskWarrior](https://youtu.be/8I7nQmKAWpM)
            * https://duckduckgo.com/?q=taskwarrior%20telegram&ko=-1&ia=web
            * https://timewarrior.net/docs/taskwarrior/
    
    how to integrate appflowy into a system with taskwarrior, ganttouchthis, timewarrior, telegram, etc?
* [Taskwarrior - What's next? - Taskwarrior](https://taskwarrior.org/docs/start/)
* [GothenburgBitFactory/taskwarrior: Taskwarrior - Command line Task Management](https://github.com/GothenburgBitFactory/taskwarrior)
* [10 Best Free and Open Source Command-Line Python Application Development Tools - LinuxLinks](https://www.linuxlinks.com/best-free-open-source-command-line-python-application-development-tools/)
* [python - Combining pyperclip copy-to-clipboard with pyautogui paste? - Stack Overflow](https://stackoverflow.com/questions/47075240/combining-pyperclip-copy-to-clipboard-with-pyautogui-paste)
* [fschlz/habit-tracker: simple streamlit app to keep track of the essentials](https://github.com/fschlz/habit-tracker)
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
    
    search: vimwiki for android
* [VIMKipedia: Or How I Built My Second Brain Using Vim - YouTube](https://www.youtube.com/watch?v=q80hXvorl0o)
    
    make a habit-building subapp in the scheduling app
* [Lyaaaaaaaaaaaaaaa/Project_Kanban: A lightweight desktop software, under the MIT licence to create and manage your Kanbans boards for your personal projects](https://github.com/Lyaaaaaaaaaaaaaaa/Project_Kanban)
* [TaskMaster](http://www.kevra.org/TheBestOfNext/ThirdPartyProducts/ThirdPartySoftware/InformationManagement/TaskMaster/TaskMaster.html)
    
    (9+) Config(9+) planager (ganttstopme?)
* [timeopochin/GanTTY: Project planning from the terminal](https://github.com/timeopochin/GanTTY)
* [8ware/task-gantt: Generating Gantt charts from Taskwarrior entries](https://github.com/8ware/task-gantt)
* [task-gantt/gantt.png at master · 8ware/task-gantt](https://github.com/8ware/task-gantt/blob/master/doc/gantt.png)
* [Timewarrior - timew-charts - Timewarrior](https://timewarrior.net/docs/charts/)
* [Manage tasks and projects on Fedora with Taskwarrior - Fedora Magazine](https://fedoramagazine.org/manage-tasks-and-projects-on-fedora-with-taskwarrior/)
* [TaskWarrior, Taskjuggler, Planner and Well Planning Things Part 2](https://blog.x-rayman.co.uk/2013/04/10/taskwarrior-taskjuggler-planner-and-well-planning-things-part-2/)
* [I haven't found a decent ToDo list with this killer feature: dependencies. I wan... | Hacker News](https://news.ycombinator.com/item?id=11352791)
    
    2 Geeky Tools to Manage Your Sourcing Tasks – SourceConTaskWarrior - mark.george/WikiEnum HOWTO — Python 3.11.2 documentationalgorithm - Evenly space n items over m iterations - Stack Overflow
* [ganttouchthis/LICENSE at main · yelircaasi/ganttouchthis](https://github.com/yelircaasi/ganttouchthis/blob/main/LICENSE)
* [My integrations | Notion Developers](https://www.notion.so/my-integrations)
* [syncall/readme-tw-notion.md at master · bergercookie/syncall](https://github.com/bergercookie/syncall/blob/master/readme-tw-notion.md)
* [AppFlowy-IO/AppFlowy-Server: AppFlowy is an open-source alternative to Notion. You are in charge of your data and customizations. Built with Flutter and Rust.](https://github.com/AppFlowy-IO/AppFlowy-Server)
* [Reddit - Here! Some USEFUL date formulas for your Notion's Setup!](https://www.reddit.com/r/Notion/comments/fsnmmg/here_some_useful_date_formulas_for_your_notions/)
* [My efficient and effective Productivity Setup With Emacs, Org Mode and Org Agenda](https://youtu.be/oG9jP0SsPqQ)
* [Curses Programming with Python — Python 3.11.2 documentation](https://docs.python.org/3/howto/curses.html)
* [curses — Terminal handling for character-cell displays — Python 3.11.2 documentation](https://docs.python.org/3/library/curses.html#module-curses)
* [TiddlyWiki — a non-linear personal web notebook](https://tiddlywiki.com/)
* [AppFlowy.IO](https://appflowy.io/)
            * https://itsfoss.com/appflowy/
* [msiemens/tinydb: TinyDB is a lightweight document oriented database optimized for your happiness :)](https://github.com/msiemens/tinydb)
* [Welcome to TinyDB! — TinyDB 4.7.1 documentation](https://tinydb.readthedocs.io/en/latest/)
* [curses (programming library) - Wikipedia](https://en.wikipedia.org/wiki/Curses_(programming_library))
* [Taiga 30min Setup - Learn Taiga basics - Taiga Community](https://community.taiga.io/t/taiga-30min-setup/170)
* [kquick/mywork: Tool to keep track of what you have been working on, and where and when work should continue](https://github.com/kquick/mywork)
* [brick: A declarative terminal user interface library](https://hackage.haskell.org/package/brick)
* [zadam/trilium: Build your personal knowledge base with Trilium Notes](https://github.com/zadam/trilium)
* [(1) Town Square - yelircaasi.mattermost.com Mattermost](https://yelircaasimattermostcom.cloud.mattermost.com/main/channels/town-square)
* [Paperspace Blog](https://blog.paperspace.com/)
* [How to host on a website · AppFlowy-IO/AppFlowy · Discussion #283](https://github.com/AppFlowy-IO/AppFlowy/discussions/283)
            * https://intheam.readthedocs.io/en/latest/api/index.html
            * https://obsidian.md/
* [set up dvc with google drive - Google Search](https://www.google.com/search?client=firefox-b-d&q=set+up+dvc+with+google+drive)
            * https://www.youtube.com/watch?v=A1YgbAp5YRc
* [Stuff I did - The stuff I do](https://www.statox.fr/projects/#)
            * https://dashboard.heroku.com/account
    
    heroku backup XY047RVTHX H0RYMIZ36C VTU7G4K6YO IMDP455R7S P7EN0W7BZP NDWZ0FMG1L ECTT2W4552 ZTICQNARDY 7SUJG65VN8 J1B78S0QOR
            * https://github.com/Cubified/tuibox
            * https://github.com/toeverything/AFFiNE
* [Are TODO Applications Hind](https://www.youtube.com/watch?v=BcxZj2qh4Kw)ering Your Productivity?
    


* Not using, but good reference → software for later


* Note-taking, neorg-like, etc
* [ ] https://github.com/xwmx/nb ***
* TUI frameworks
* [ ] https://github.com/fdehau/tui-rs → https://github.com/orhun/rust-tui-template
* [ ] https://github.com/rivo/tview/
* [ ] https://github.com/ArthurSonzogni/FTXUI
* [ ] https://github.com/Textualize/textual        * https://www.willmcgugan.com/blog/tech/post/textual-progress/        * https://www.youtube.com/@WillMcGugan
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
* taskwarrior-like
* [ ] https://github.com/pimutils/todoman


* ⇒ https://wiki.archlinux.org/title/List_of_applications/Other
    * https://jamesclear.com/how-to-stop-procrastinating
    * https://www.jeffsanders.com/the-7-essential-elements-of-productivity-element-4-planning/ 
    * [HedgeDoc - The best platform to write and share markdown.](https://hedgedoc.org/)
    * [hedgedoc/hedgedoc at blog.cloudron.io](https://github.com/hedgedoc/hedgedoc?ref=blog.cloudron.io)
    * [https://github.com/viseshrp/workedon](https://github.com/viseshrp/workedon)


* Note-Taking Tools (reference, ideas)
            * https://srid.ca/neuron-announce
            * https://github.com/srid/emanote 
            * https://github.com/jrnl-org/jrnl 
* [Ticketsystem: Znuny 7 als Open-Source-Alternative zu OTRS](https://www.heise.de/news/Ticketsystem-Znuny-7-als-Open-Source-Alternative-zu-OTRS-8969167.html)


* Read https://neovim.io/doc/user/lua.html
* Read https://learnxinyminutes.com/docs/fr-fr/lua-fr/, https://learnxinyminutes.com/docs/pt-br/lua-pt/,  https://learnxinyminutes.com/docs/de-de/lua-de/, https://learnxinyminutes.com/docs/ru-ru/lua-ru/
* Read https://www.lua.org/manual/5.1/1
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
    * https://www.reddit.com/r/Notion/comments/nd76ec/notion_api_webhooks/ 
    * https://www.thegist.so/#Pricing 


* [ ] https://github.com/nvim-neorg/neorg
    * [gtd books](http://libgen.rs/search.php?req=getting+things+done+David+allen&open=0&res=25&view=simple&phrase=1&column=def)
    * [xpavle00/Habo: Habo is an open-source habit tracker. Created in a flutter.](https://github.com/xpavle00/Habo)
    * [wakatara/harsh: Habit tracking for geeks. A minimalist, command line tool for tracking and understanding your habits.](https://github.com/wakatara/harsh)
    * [codito/habito: Simple commandline habits tracker.](https://github.com/codito/habito)
    * [iestynpryce/habit: Command line habit tracker](https://github.com/iestynpryce/habit)
    * [nerdypepper/dijo: scriptable, curses-based, digital habit tracker](https://github.com/nerdypepper/dijo)
    * [qba73/habit: Habit tracker is a CLI app for tracking daily habits.](https://github.com/qba73/habit)
    * https://github.com/MahmoudNasser01/django_simple_notification 
    * https://github.com/avelino/awesome-go#advanced-console-uis 
    * https://github.com/adnanh/webhook
    * https://github.com/schmee/habu 


* [ ] good-looking nvim plugin https://github.com/ribelo/taskwarrior.nvim (keep an eye on https://github.com/dzintars/taskwarrior.nvim)
* [ ] https://github.com/hugginsio/twig.nvim, also a nvim plugin
* [ ] roadmap of a neorg integration: https://github.com/skbolton/neorg-taskwarrior/blob/main/roadmap.norg
    * https://github.com/nvim-neorg/neorg/wiki/GTD-Queries/ba2cc1c5cf8c5ed0690e445f213e18c04ff4e157 


# Roadmap


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
* [ ] ***** https://github.com/jotaen/xit https://xit.jotaen.net/
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
* https://github.com/adnanh/webhook
* https://www.freedesktop.org/wiki/Software/dbus/ 
* https://develop.kde.org/frameworks/kirigami// 
* https://docs.python.org/3.11/library/argparse.html#module-argparse 
* https://github.com/python-poetry/cleo
* https://rich.readthedocs.io/en/stable/introduction.html 
* https://click.palletsprojects.com/en/8.1.x/ ← looks really good
* https://github.com/chris48s/stage-left, together with 


* my projects
    
    name ideas: teclado, accordo, keycritic
        * https://www.makeuseof.com/set-up-raspberry-pi-as-server/ 
        * https://www.toptal.com/raspberry-pi/how-to-turn-your-raspberry-pi-into-a-development-server 
        * https://www.toptal.com/raspberry-pi/how-to-turn-your-raspberry-pi-into-a-development-server 
        * https://json-schema.org/understanding-json-schema/structuring 
    
    qutebrowser due to frozen teams:
        * [112:152:0100/000000.790507:ERROR:broker_posix.cc(46)] Received unexpected number of handles    * [112:152:0100/000000.791120:ERROR:broker_posix.cc(46)] Received unexpected number of handles
    
    move “other” from Recursos por idioma to Notion
    
    → make Configurability Github organization with forks of apps that support custom colors and keybindings (or just patches?)
    
    Wie kann ich mich mehr politisch engagieren?
    
    Just re-write plt code in typescript/JavaScript to use a good highlighting library pre-html; use Perl for something else, like shell scripts 
        * https://www.google.com/search?client=firefox-b-m&sca_esv=584934822&sxsrf=AM9HkKm9ojvgZM44drVwG0h7TGXNOfu28g%3A1700779676233&q=drop-down+library+ui+design+javascript&oq=drop-down+library+ui+design+javascript&aqs=heirloom-srp 
    
    Install Ubuntu server 23.10 and use complete install script for i3, picom, etc. - then install Nix and home-manager
        * https://nix.dev/tutorials/nixos/installing-nixos-on-a-raspberry-pi.html 
    
    DON'T Use Raspberry Pis for Servers! https://www.youtube.com/watch?v=aKmKo_Ua7rQ&pp=ygUYbml4b3Mgb24gcmFzcGJlcnJ5IHBpIDQg 
    
    look into how to make aliases for different programming languages and projects
    
    xdg-settings set default-web-browser firefox.desktop → make work on hank with flatpak, vs https://askubuntu.com/questions/16621/how-to-set-the-default-browser-from-the-command-line 
        * https://karabiner-elements.pqrs.org/docs/json/ → see for ideas for Clavix format
        * https://github.com/manwar/perlweeklychallenge-club/tree/master - many languages
        * https://github.com/briandfoy/PerlPowerTools → for RosettaProjects
        * https://wpdatatables.com/javascript-table-library/ 
        * https://pencilandpaper.io/articles/ux-pattern-analysis-enterprise-data-tables/ 
        * https://www.smashingmagazine.com/2019/01/table-design-patterns-web/ 
        * https://medium.com/design-bridges/complex-tables-356826d11861 
        * [https://www.google.com/search?q=web design select which columns and rows of table to show&ie=utf-8&oe=utf-8&client=firefox-b-m](https://www.google.com/search?q=web%20design%20select%20which%20columns%20and%20rows%20of%20table%20to%20show&ie=utf-8&oe=utf-8&client=firefox-b-m) 
        * https://blog.logrocket.com/exploring-best-syntax-highlighting-libraries/ 
        * https://virola.io/articles/how-to-make-your-server-app-publicly-accessible 
        * https://www.reddit.com/r/rust/comments/15xl4ew/inkjet_a_batteriesincluded_syntax_highlighting/ 
        * https://github.com/rdbo/sigma-linux
        * https://opensource.com/article/21/7/custom-raspberry-pi-image 
    
    HN Guix https://news.ycombinator.com/item?id=17083209 
        * https://thiagowfx.github.io/2022/01/alpine-linux-on-raspberry-pi-diskless-mode-with-persistent-storage/ 
        * https://gitlab.com/raspi-alpine/builder
        * https://www.instructables.com/Booting-Raspberry-Pi-3-B-With-a-USB-Drive/ 
        * https://www.tomshardware.com/news/raspberry-pi-web-server,40174.html 
        * https://github.com/macmpi/alpine-linux-headless-bootstrap
        * https://itsfoss.com/screenshot-login-screen-ubuntu-linux/ 
        * https://github.com/rdbo/sigma-linux
        * https://askubuntu.com/questions/1329599/dual-boot-two-linux-distributions-on-one-disk 
    
    next step: figure out how to ssh into my work computer -> good for planager access from phone, etc
    
    Open Weather Map API KEy 39f576bf65c9e540357e993fc955c7e5
    
    inthe_am/isaac.r.riley/f616213f-e590-4a3c-9b73-40733e137ad5 
    
    Look for software that can apply a complex (and continuous) color remapping to a PDF file, or patch my own!!!
    
    Re-write tree command to show view proportional to LoC or other metrics (tree + tokei, etc)
        * https://www.mypy-lang.org/ → make PR: roadmap on site not found
    
    → use mypyc for planager? → compile with codon / mypyc / rewrite in cython and compile?
    
    Write Python script to parse poetry lockfile, query most recent version (pypi / [Github](https://stackoverflow.com/questions/76133390/how-to-use-github-api-to-retrieve-the-latest-version-of-a-package)) to identify which can be updated
        * https://braille-txt.github.io/ 
    
    Fork terminal matrix video and use braille for an improved image → even unicode http://xahlee.info/comp/unicode_ascii_art.html 
    
    → simple pixelwise regression → pixelwise regression weighted relative to edges? → 
    
    write library for terminal art like ascii art, but with unicode!
    
    → https://elpa.gnu.org/packages/ascii-art-to-unicode.html 
    
    Cool for images, but also for text → box lines and block characters, as well as curves
    
    Braille text art would also be cool → “brailletters” → write CLI in Nim, Zig, Vlang or something?
        * https://github.com/snyde875/ASCII-Art-Tool 
    
    Re-write Matrix terminal to use braille and alternatively to use (a suitable set of) unicode characters
    
    Which font processing libraries already exist? How to interface with them?
    
    - alignment
        
        let "word" = "lemma" in what follows
        
        given 2 sentences which may be a match:
        
        what
         is the probability of word ai and word bj co-occurring in a correct 
        match vs in an incorrect match? -> ratio, i.e. certainty gain
        
        add up log certainty gain for all relevant word pairs found in the sentence
        
        find most predictive words (i.e. word pairs)
        
        Also negative aspect? -> words highly likely to be translated with another word should decrease certainty if it is not found
                * https://ugarit.ialigner.com/userProfile.php?userid=3721 
                * https://ugarit.ialigner.com/about.php 
                * https://huggingface.co/UGARIT 
    * [Image Dithering: Eleven Algorithms and Source Code | tannerhelland.com](https://tannerhelland.com/2012/12/28/dithering-eleven-algorithms-source-code.html)
    
    (productivity) https://github.com/matthiasn/lotti 
        * https://github.com/Rigellute/spotify-tui/issues/732 for spotify-tui on rpi
        * https://docs.spotifyd.rs/installation/Raspberry-Pi.html 
        * [https://accounts.spotify.com/authorize?response_type=code&state=AV5CzOfJ8YxNnEch&client_id=0cd789e4785c4b19ad5a200822b12104&redirect_uri=http:%2F%2Flocalhost:8888%2Fcallback&scope=playlist-read-collaborative playlist-read-private playlist-modify-private playlist-modify-public user-follow-read user-follow-modify user-library-modify user-library-read user-modify-playback-state user-read-currently-playing user-read-playback-state user-read-playback-position user-read-private user-read-recently-played&](https://accounts.spotify.com/authorize?response_type=code&state=AV5CzOfJ8YxNnEch&client_id=0cd789e4785c4b19ad5a200822b12104&redirect_uri=http:%2F%2Flocalhost:8888%2Fcallback&scope=playlist-read-collaborative%20playlist-read-private%20playlist-modify-private%20playlist-modify-public%20user-follow-read%20user-follow-modify%20user-library-modify%20user-library-read%20user-modify-playback-state%20user-read-currently-playing%20user-read-playback-state%20user-read-playback-position%20user-read-private%20user-read-recently-played&)
        * https://developer.spotify.com/dashboard
        * https://github.com/phaazon/mind → also look at how keymaps are handled and represented
        * https://github.com/Nighty3098/FocuseSpace 
        * [palette::named - Rust](https://docs.rs/palette/0.4.1/palette/named/index.html#constants)
        * [rdbo/sigma-linux: Sigma Linux - Σlite Operating System](https://github.com/rdbo/sigma-linux)
        * [johannesjo/super-productivity: Super Productivity is an advanced todo list app with integrated Timeboxing and time tracking capabilities. It also comes with integrations for Jira, Gitlab, GitHub and Open Project.](https://github.com/johannesjo/super-productivity)
        * [Python 3.12 Generic Types Explained ArjanCodes ArjanCodes Verificada • • 5,2 K visualizaciones hace 5 horas Nuevo](https://www.youtube.com/watch?v=q6ujWWaRdbA)
        * [Building Implicit Interfaces in Python with Protocol Classes](https://andrewbrookins.com/technology/building-implicit-interfaces-in-python-with-protocol-classes/)
        * [Protocols in Python: Why You Need Them - GoDataDriven](https://godatadriven.com/blog/protocols-in-python-why-you-need-them/)
        * [How to create module-wide variables in Python? - Stack Overflow](https://stackoverflow.com/questions/1977362/how-to-create-module-wide-variables-in-python)
        * [Body Weight Planner - NIDDK](https://www.niddk.nih.gov/bwp)
        * [Colored and Clickable Wrapping URLs in LaTeX and LyX](http://troubleshooters.com/linux/lyx/urlwrap.htm)
        * [mtkennerly/poetry-dynamic-versioning: Plugin for Poetry to enable dynamic versioning based on VCS tags](https://github.com/mtkennerly/poetry-dynamic-versioning)
        * [TagTrees: Improving Personal Information Management Using Associative Navigation- on screen version](https://karl-voit.at/tagstore/downloads/Voit2012b.pdf)
        * [The Tag «pim»](https://karl-voit.at/tags/pim/)
    
    learn about plugin architecture - neovim, qutebrowser, anki, qtile, xplr, emacs, awesome, hilbish, vim, wezterm, kitty, other lua-configurable apps, etc
        * [Task management with Taskwarrior and Taskell](https://tallguyjenks.github.io/blog/task-management-with-taskwarrior-and-taskell.html)
        * [Block Elements - Wikipedia](https://en.wikipedia.org/wiki/Block_Elements)
        * [proglang table](https://www.notion.so/189fb9f08c944ab3ba2c284a4fb09445?pvs=21)
        * [GitPython/git/diff.py at main · gitpython-developers/GitPython](https://github.com/gitpython-developers/GitPython/blob/main/git/diff.py)
        * [difflib — Helpers for computing deltas — Python 3.12.0 documentation](https://docs.python.org/3/library/difflib.html)
        * [annotated-types/annotated_types/__init__.py at main · annotated-types/annotated-types](https://github.com/annotated-types/annotated-types/blob/main/annotated_types/__init__.py)
        * [Pytest With Eric](https://pytest-with-eric.com/)
        * [Welcome to Pydantic - Pydantic](https://docs.pydantic.dev/latest/)
        * [Pytest With Eric](https://pytest-with-eric.com/)
        * [pywal/pywal/backends/wal.py at master · dylanaraps/pywal](https://github.com/dylanaraps/pywal/blob/master/pywal/backends/wal.py)
        * [JSON Schema](https://json-schema.org/understanding-json-schema)
        * [JSON Schema - object](https://json-schema.org/understanding-json-schema/reference/object#regexp)
        * [JSON Schema 2020-12](https://www.learnjsonschema.com/2020-12/)
        * [GitHub - rdbo/sigma-linux: Sigma Linux - Σlite Operating System](https://github.com/rdbo/sigma-linux)
        * [Install Ubuntu Server | Ubuntu](https://ubuntu.com/tutorials/install-ubuntu-server#6-choose-your-install)
        * [Create a Bootable Device - Alpine Linux](https://wiki.alpinelinux.org/wiki/Create_a_Bootable_Device)
    
* nebokrai & similar
        * https://github.com/simplex-chat/simplex-chat/tree/stable/apps 
        * https://github.com/simplex-chat/simplex-chat/blob/stable/apps/simplex-bot-advanced/Main.hs 
        * https://simplex.chat/blog/20231125-simplex-chat-v5-4-link-mobile-desktop-quantum-resistant-better-groups.html 
    
    SchildiChat https://f-droid.org/packages/de.spiritcroc.riotx/ 
    
    Best Secure Messaging App | FBI Document Leaked - YouTube https://www.youtube.com/watch?v=wj-aR96FOA0&pp=ygUPU2lnbmFsIGNoYXQgYm90 
        * https://f-droid.org/packages/com.mhss.app.mybrain/ 
        * https://organice.200ok.ch/ 
        * https://mrossinek.gitlab.io/programming/testing-tui-applications-in-python/ 
        * https://github.com/AsamK/signal-cli
        * https://ecosystem.atlassian.net/wiki/spaces/JRJC/overview 
        * https://github.com/PROxZIMA/TimetableScheduler 
        * https://github.com/topics/timetable-generator
        * https://github.com/nomeata/arbtt - automatic rule-based time tracker
        * https://sr.ht/~emersion/goguma/ 
        * https://sr.ht/~emersion/gamja/
        * https://github.com/ergochat/ergo
        * https://github.com/jquku/Matrix-Chatbot
        * https://github.com/lwesterhof/semaphore
        * https://gitlab.com/signald/signald
        * https://signald.org/ 
        * https://github.com/signalapp/libsignal
        * https://github.com/AsamK/signal-cli
        * https://github.com/matrix-org/matrix-hookshot 
        * https://play.google.com/store/apps/details?id=com.countercultured.irc4android 
        * https://gitlab.com/jpypi/rustix 
        * https://matrix.org/ecosystem/integrations/ 
        * https://gitlab.com/jpypi/rustix
        * https://nixos.wiki/wiki/Signald 
        * https://tasks.org/ $$$$$$$$$
        * https://github.com/usememos/memos
        * https://xit.jotaen.net/
        * https://github.com/orgzly/orgzly-android
        * https://www.libhunt.com/r/organice 
        * https://org-web.org/ 
        * https://appwrite.io/ 
        * https://github.com/bgregos/foreground 
        * https://f-droid.org/packages/me.bgregos.brighttask/ 
        * https://f-droid.org/packages/com.madlonkay.orgro/ → make for neorg
        * https://inthe.am/ 
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
        * https://anytype.io/ 
    
    My GTD Emacs Workflow (Getting Things Done) - YouTube https://m.youtube.com/watch?v=92PCxH29UCo
        * https://stackoverflow.com/questions/35250621/recursive-self-referencing-json-schema 
        * https://fortelabs.com/blog/test-driving-a-new-generation-of-second-brain-apps-obsidian-tana-and-mem/ 
        * https://stackoverflow.com/questions/20752716/json-schema-recursive-schema-definition 
        * https://about.org-note.com/ 
        * https://libera.chat/guides/clients 
        * https://f-droid.org/packages/io.mrarm.irc/ 
        * https://sopel.chat/ 
        * https://github.com/topics/irc-bot
        * https://graz.social/@publicvoit/111388551599358628 
        * [How principled coders outperform the competition](https://m.youtube.com/watch?v=q1qKv5TBaOA&t=4s)
        * [types-jsonschema · PyPI](https://pypi.org/project/types-jsonschema/#history)
        * [nebokrai/.envrc at main · yelircaasi/nebokrai](https://github.com/yelircaasi/nebokrai/blob/main/.envrc)
        * [SSH and GPG keys](https://github.com/settings/keys) 


## Discussion


* ```
* Btw I use obsidian for work only, in our shared work obsidian vault


* We use a canva and have multiple notes spread out on this canva with dataview showing tasks fetched by the tasks plugin
* We have a INBOX note, actions list dataview fetching tasks with different contexts (#contexts/shallow, #contexts/deep) And we have one note for each member that shows a dataview for all tasks with the tag of the user Mine for example, is #contexts/danymat (ofc something else)
* And other things such as waiting for, due dates, etc So that we can create notes from everywhere in the vault and it appears there Kinda cool tbh
* ronkdar*February 3, 2024 8:15 PM*February 3, 2024 8:15 PMThat's actually pretty nifty.


* Never thought to use one Obsidian vault for a team


* Danymat*February 3, 2024 8:18 PM*February 3, 2024 8:18 PMWe store all our Pentest notes/reports/processes/knowledge there
* That quite good
* Sevoris*February 4, 2024 5:36 PM*February 4, 2024 5:36 PMHow do you avoid people stepping on each other with concurrent edits?


### Danymat*February 5, 2024 12:34 AM*February 5, 2024 12:34 AM


* I dont Collab with git is a pain in the a**


* Thats the only thing impeding mass adoption i think: a good live collaboration feature


### sLoBbY_BoBbY*February 5, 2024 1:10 AM*February 5, 2024 1:10 AM


* write code in google docs


* ronkdar*February 5, 2024 2:02 AM*February 5, 2024 2:02 AMReal Companies right code in Word docs via SharePoint.
* gapps smh
* sLoBbY_BoBbY*February 5, 2024 4:40 AM*February 5, 2024 4:40 AMUse a handwriting to text app to turn whiteboard pseudo code to actual code


### ronkdar*February 5, 2024 4:58 AM*February 5, 2024 4:58 AM


* Honestly I would love to have a smart whiteboard that could important my hand drawn diagrams into Visio


* I am blessed with an *enormous* whiteboard in my office.
* Sevoris*February 5, 2024 7:12 AM*February 5, 2024 7:12 AMI got the semi-shite version of that - we have treated walls that you can marker onto and use magnets on.Still very nice when you need estate to whiteboard on
* Danymat*February 5, 2024 9:24 AM*February 5, 2024 9:24 AMLmao that’s so true
* Danymat*February 5, 2024 9:25 AM*February 5, 2024 9:25 AMStart with excalidraw and stay there for as long as possible
* Sevoris*February 5, 2024 10:52 AM*February 5, 2024 10:52 AMtbh much as I like it, sometimes it is frustratingly limited and I go over to [](ghttp://draw.io)
* [draw.io](http://draw.io)
* ronkdar*February 5, 2024 2:23 PM*February 5, 2024 2:23 PMWork has the full MS Office suite. Why would i use anything except Visio?
* Sevoris*February 5, 2024 2:42 PM*February 5, 2024 2:42 PMIdk, I have access as well and find Visio heavy and clunky
* Plus it doesn‘t embedd.
* Danymat*February 5, 2024 2:47 PM*February 5, 2024 2:47 PMUse what you like/what you’re good at/what you have/what other have
* For me, we don’t have Visio, xmind is not that good for us, obsidian canva too limited, and [](ghttp://draw.io)
* [draw.io](http://draw.io) is good but lacks the liberty of the excalidraw canva
* ronkdar*February 5, 2024 2:48 PM*February 5, 2024 2:48 PMFor me, SharePoint integration makes many sins forgiveable.
* Danymat*February 6, 2024 8:39 AM*February 6, 2024 8:39 AMLucky guy


### purewater*February 6, 2024 8:58 AM*February 6, 2024 8:58 AM


* Wait this is Awesome


* Sevoris*February 6, 2024 3:21 PM*February 6, 2024 3:21 PMKind of. Unfortenatly the base for this is the very german ingrain wallpaper, and that means there are many knoocks and cranies for marker color to be protected from when you try and wipe it off
* judicious use of cleaning fluid is strongly advised


### ronkdar*February 8, 2024 3:53 PM*February 8, 2024 3:53 PM


* For any ADD/ADHD people here, I picked up a technique from No Boilerplate (youtuber) that integrates well with GTD: DO THE HARDEST THING FIRST.


* My brain regularly tries to sabotage me from doing any task that feels like a chore (high effort, low reward), so I always tend to do easy tasks first.


### Danymat*February 8, 2024 3:54 PM*February 8, 2024 3:54 PM


* The famous « eat the frog


* ?”


### ronkdar*February 8, 2024 3:54 PM*February 8, 2024 3:54 PM


* After I do a bunch of easy tasks, I'm out of motivation for the day, so I don't start any hard tasks.


* Repeat every day, and the hard tasks never get done.


* So, in my Obsidian GTD system, I have tags #hard and #veryhard and filters that will push tasks with those tags closer to the top of my DO THIS NEXT list


* That list is mostly sorted like:
* tasks due today
* tasks due this week
* hard tasks
* everything else
* A hard task due today instantly goes to the top of the list.
* Following this is challenging. My brain hates it. But I'm a lot more effective at work using this system.
* purewater*February 8, 2024 4:56 PM*February 8, 2024 4:56 PMThis never worked for me unfortunately
* ronkdar*February 8, 2024 5:02 PM*February 8, 2024 5:02 PMIt only barely works for me, but it's been an improvement.


### adlaurentius


### *February 8, 2024 5:06 PM*February 8, 2024 5:06 PM


* Coming from an OCD guy, try to do a "pre-mortem". If you are familiar with post-mortems, it's all about finding out what happened by looking at the evidence left behind. A pre-mortem would be writing a note with the following headings:


* 1. What do I want to do? Write exactly what you are doing and when. Do not leave room for interpretation.
* 2. Why am I doing this? Explain to yourself why you are doing it. Why is it important to you?
* 3. How will you do it?
* 4. How will you know you have wandered from the original task?
* 5. What thoughts and feelings would I need to react to to derail this action?
* Thoughts:


* I have tried before and I failed. What is the point.


* Feelings:


* Tiredness. Whatever.


* ronkdar*February 8, 2024 5:07 PM*February 8, 2024 5:07 PMThis makes a lot of sense.


### adlaurentius


### *February 8, 2024 5:07 PM*February 8, 2024 5:07 PM


* The most useful things are writing why you are doing it, because when you are being pulled by urges, you brain is going to find very difficult to remember why you are putting yourself in such an uncomfortable situation


### ronkdar*February 8, 2024 5:07 PM*February 8, 2024 5:07 PM


* I help an OCD friend answer these questions for herself, when she's trying to work through whether what she's doing is rational or not.


### adlaurentius


### *February 8, 2024 5:08 PM*February 8, 2024 5:08 PM


* And the thoughts bit, so that they don't catch you by surprise, so you are ready for them and don't buy into them


* ronkdar*February 8, 2024 5:08 PM*February 8, 2024 5:08 PMYeah that makes a lot of sense.
* For AD(H)D, capturing tasks, processing, and assigning dates and other tags is the same kind of pre-mortem.


### adlaurentius


* *February 8, 2024 5:09 PM*February 8, 2024 5:09 PMYeah, I imagine there's a lot of overlap
* ronkdar*February 8, 2024 5:09 PM*February 8, 2024 5:09 PMSetting everything up ahead of time so my brain can't sabotage me when I'm not paying attention.


### adlaurentius


* *February 8, 2024 5:09 PM*February 8, 2024 5:09 PMExcept that maybe for me it's more anxiety/dread rather than excitement or boredom that pushes me around
* ronkdar*February 8, 2024 5:09 PM*February 8, 2024 5:09 PMYeah, sure


### adlaurentius


### *February 8, 2024 5:10 PM*February 8, 2024 5:10 PM


* Tell her to check out Mark Freeman in youtube


* It's like a gold mine of info
* I don't do the meditation stuff but the rest I have found very useful
* ant*February 8, 2024 5:34 PM*February 8, 2024 5:34 PMI use work cycles. I have a nested template. First level is what I need to accomplish, with some prompts to help me zone in and anticipate what could go wrong or what could be a distraction. The inner level is 35 pomodoro and a couple more prompts. I add inner cycles s needed. Each level has a couple of prompts to complete at the end of the task for reflection and planning.
* WildRage*February 8, 2024 6:00 PM*February 8, 2024 6:00 PMooh that's so smart, I normally rely on things like body doubling and trying to lower the ease of access to all of my tasks because the easier it is to start them, the more likely I am to end up doing them
* ronkdar*February 8, 2024 7:37 PM*February 8, 2024 7:37 PMBody doubling?


* Yeah ease of access is key. I also found that if a task is many steps long, I won't start it.


* Vhyrro*February 8, 2024 7:44 PM*February 8, 2024 7:44 PMthis is why GTD has a concept of an actionable which you create during the processing phase
* An example is on hamberg's page. You take notes of general ideas but when you process your inbox you usually convert those abstract ideas into actionable stuff:The next action needs to be aphysical visible


* So if you have a multi-step problem, be sure to break it down into smaller and most importantly actionable subtasks


### adlaurentius


### *February 8, 2024 8:33 PM*February 8, 2024 8:33 PM


* If I could have learnt only one productivity rule earlier in my life, it would be that one


* 
* GTD is worth it just for that bit


* I remember once someone who wrote a post about GTD stuff, and said something like: "Imagine I asked you to wash one single plate. Just one. Would you argue with me? No, you would do it, just because. Just to see where I am going with this"


* 
* It's like reverse addition. No one gets addicted to something just by deciding to ruin their lives. No, they do something "just this once". "Just once more".


### purewater*February 9, 2024 6:28 PM*February 9, 2024 6:28 PM


* If only I could trick myself into doing dishes by washing a single plate


* 
* ronkdar*February 9, 2024 6:28 PM*February 9, 2024 6:28 PMSeriously.


### adlaurentius


* *February 9, 2024 9:04 PM*February 9, 2024 9:04 PMI used to do a specific strategy for dishes. I would watch something that had ads, and while the ads were on, I would run to the kitchen and wash dishes while the ads lasted. Once the program started again, I would leave it where it was until the next break. It was like a remote pomodoro thing
* If you cannot answer the question "how long is this going to go on for?" you are losing
* B4mbus*February 9, 2024 10:08 PM*February 9, 2024 10:08 PMYeah that's the frog technique, "eat the biggest frog first", but it's kinda weird it works for you, as AD(H)D people typically don't have the dopamine to start the biggest tasks first so sticking with the easiest and working your way up should be better. If you're not AD(H)D paralyzed when thinking of doing the big task it's fine. The 2 minute rule plays nicely here.
* B4mbus*February 9, 2024 10:09 PM*February 9, 2024 10:09 PMThis is less or more eisenhower matrix I guess?
* Im curious about your Obsidian workflow, I also have ADHD, do you think just plain old notes app would work? Or do some of the Obsidian's automations actually helped you a lot?
* B4mbus*February 9, 2024 10:44 PM*February 9, 2024 10:44 PM [](ghttps://hamberg.no/gtd/)
* [https://hamberg.no/gtd/](https://hamberg.no/gtd/)
* Im reading this and ngl that gtd stuff seems kinda complicated
* Or my ADHD brain just makes it seem hard
* Managing lists, contexts, calendars
* ronkdar*February 9, 2024 10:51 PM*February 9, 2024 10:51 PMI use the automations to tell me what to do next
* Because I can't be trusted to decide for myself.


* The hard part is obeying my own system. I do not always succeed.


* 
* ronkdar*February 9, 2024 10:52 PM*February 9, 2024 10:52 PMYou only have to use the parts you need.
* I don't use contexts or a tasks calendar.
* I sort tasks by literal work project.
* The important bit is the capture-process-act cycle.
* Because I forget shit all the time, the capture part is the biggest deal for me.


* It should be as easy and fast as possible to capture a task or idea for later processing. No pressure to process it right away. Just write it the fuck down and move on.


* Keeps me from getting distracted from my current task when new tasks arrive (emails or phone calls)


* @B4mbus if you ping me in a few hours I'll boot up my work laptop and share my Dashboard note. It does useful things for me.


* (If you don't I'll forget lmao)


### B4mbus*February 9, 2024 10:59 PM*February 9, 2024 10:59 PM


* Ill ping you in about 7 because Im off to sleep soon, haha, I wont forget because my ADHD is curious of pings and I can just mark your message as unread so Ill see the ping :p


* ```


## FOR ROADMAPS
## for roadmaps
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