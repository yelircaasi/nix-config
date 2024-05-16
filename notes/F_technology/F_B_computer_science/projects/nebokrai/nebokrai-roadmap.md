# Nebokrai

## Roadmap TODO: CLEANUP

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
    1. [neovim.io/doc/user](https://neovim.io/doc/user/)
    2. read [neovim.io/doc/user/develop.html](https://neovim.io/doc/user/develop.html)
    3. skim [neovim wiki for developers](https://github.com/neovim/neovim/wiki#developers)
    4. browse [sourcegraph.com/github.com/neovim/neovim](https://sourcegraph.com/github.com/neovim/neovim)
    5. pick 6 interesting plugins and review their code
* done
* ( ) [x]  rename universe to Planager
* ( ) [x]  add `order` attribute to Entry, such that tasks can be ordered temporally indgependently of priority
* ( ) [x]  fix attributes of routines (such as maxtime) for proper initialization
* ( ) [x]  major refactoring to separate by entity types and remove plurals from module names
* ( ) [x]  clean up imports to make relative wherever possible
* ( ) [x]  fix all mypy errors
* ( ) [x]  visualize with [pydeps](https://github.com/thebjorn/pydeps) and refactor accordingly
* ( ) [x]  fix id to be string
* ( ) [x]  remove ambiguity (**kwargs) in norg reading
* ( ) [x]  migrate List[entry] to Entries
* ( ) [x]  move internal norg dicts to classes for better verification
* ( ) [x]  create norg visualization via `__repr__`
* ( ) [x]  add support for norg task status (for completed)
* ( ) [x]  add blocking logic
* ( ) [x]  calendar is direct parent of schedules, containing entries and day parameters -> calendar folder containing a file for each day (& update tests)
* ( ) [x]  fix config handling → cleaner function signatures, less clutter
* ( ) [x]  refactor Schedule
* ( ) [x]  extract logical scheduling methods and make them pure functions
* ( ) [x]  refactor said functions
* ( ) [x]  write minimal, functional CLI
* ( ) [x]  add tracking functionality
* ( ) [x]  write prompting functions
* ( ) [x]  write item tracking class for each type, including json serialization and deserialization
* ( ) [x]  time
* ( ) [x]  boolean
* ( ) [x]  natural
* ( ) [x]  natural sequence
* ( ) [x]  composite
* ( ) [x]  define which types of composite to support and test
* ( ) [x]  Workout: ?
* ( ) [x]  Food: ?
* ( ) [x]  any others?
* ( ) [x]  add method to create tracker for each routine item, including json serialization and deserialization
* ( ) [x]  add submenu to `planager track` such that not everything needs to be tracked at once → support for partial and incremental tracking
* ( ) [x]  add colorful logging for easier debugging
* ( ) [x]  find script to convert ansi output to html
* ( ) [metacpan.org/release/nuffin/html-fromansi-2.03](https://metacpan.org/release/NUFFIN/HTML-FromANSI-2.03)
* ( ) [aha](https://github.com/theZiz/aha)
* ( ) [x]  [ansi2html](https://github.com/pycontribs/ansi2html)
* ( ) [x]  refactor plan gantt code in Planager - make run as a method of plan, taking an iterable of projects - just re-write the whole thing?
* ( ) [x]  write code to read plan and schedule from derivation.json → will make development much easier → instead just overhaul entire serde for everything, with i-roved dictionary types
* ( ) [x]  add coverage plugin to pytest
* ( ) [x]  rename to nebokrai
* ( ) [x]  write watertight json schemata
* ( ) [x]  get all check-jsonschema calls to pass
* ( ) [x]  write tests for the schemata
* ( ) [x]  remove old prompt_functions file
* ( ) [x]  organize CLI commands in hierarchical families → declaration …, derivation … (view, edit, add), validate [docs.python.org/3/library/argparse.html#sub-commands](https://docs.python.org/3/library/argparse.html#sub-commands)
* ( ) [x]  switch from argparse to sys.argv
* ( ) [x]  add “summary” command to get a good overview of all
* ( ) add parsim properties to entities for logging and debugging- [ ]  add types for CLI to ensure coverage and correctness- [ ]  add declaration class for easy interaction with declaration JSON files
* ( ) calendar
* ( ) deserialization
* ( ) serialization
* ( ) editing
* ( ) search
* ( ) [ ]  do the same as above, but for derivation
      - [ ]  same as above for tracking
      - [ ]  add help command
* ( ) [x]  add command aliases
* ( ) test all possible command-line options with dummy output- [ ]  prompt tests:
* ( ) config from dicts
* ( ) subitem
* ( ) components
* ( ) global
* ( ) default prompting tests
* ( ) tests with custom config options
* ( ) add convenient summaries of each entity
* ( ) move schemata to schemata folder in root (used for both test data and local nebokrai data)- [ ]  write tests for pythonnative data validation
* ( ) write tests for prompting
* ( ) write tests for IO and serde
* ( ) start over with data files → easier to test and devlop; remove accumulated old bloat - need to make basic declaration through the end of the year
* ( ) write code to read in logs (for tracking)- [ ]  schema validator for json → make sure that same keys are present everywhere; create report when this is not the case
* ( ) Refactor different tracking items into a single class - DRY, much simpler to maintain, more powerful and flexible
* ( ) Improve reprs of different levels (repr, str, pretty, summary, detail) to make debugging and development easier
* ( ) Pull out common repr functionality into utils
* ( ) Plan
* ( ) Schedules
* ( ) Calendar
* ( ) Entry
* ( ) Task
* ( ) Roadmaps
* ( ) Tasks
* ( ) Tracker
* ( ) Entries
* ( ) Project
* ( ) Roadmap
* ( ) Projects
* ( ) Roadmaps
* ( ) Add informative print statements to planning and scheduling, such that the entire process is observable
* ( ) [x]  Plan
* ( ) [x]  Tasks
* ( ) [x]  add_tasks
* ( ) [x]  update_plan
* ( ) Schedule
* ( ) write basic, minimal tests for opening, planning, scheduling, and tracking
* ( ) add LaTeX generation for plans and schedules!!!- [ ]  add beautiful image code generation for logs
* ( ) revise declaration and get back in the saddle
* ( ) add export and import for [x]it, khal, girok (my fork), calcurse, caldav, etc
* ( ) * ( ) [xit](https://github.com/jotaen/xit) [xit.jotaen.net](https://xit.jotaen.net/)
Python might me a good productivity app / TUI language, after all - nothing about color configs → fork and add config settings, then MR -> first fork & modify to remove login requirement!
* [alt cal](https://github.com/frossm/cal)
* ( ) [tui example c++](https://github.com/ggerganov/wtf-tui?tab=readme-ov-file)
* ( ) neorg
* ( ) orgmode -> * {prod org} [...](https://www.reddit.com/r/emacs/s/HJemdxK4sd) reorg
* ( ) todo.txt
* ( ) [taskwarrior json](https://github.com/GothenburgBitFactory/taskwarrior/blob/develop/doc/devel/rfcs/task.md)
* ( ) jira (via API)
* ( ) taskell
* ( ) appflowy (markdown)
* ( ) todoman
* ( ) khal etc.- [ ]  make separate (importable by overarching master package) TUI editor with textual for the declaration.json file. Should be easy and enjoyable to use
* ( ) full test suite
* ( ) native compilation in Python
* ( ) get stable and operational in Python, polish by dogfooding
* ( ) rewrite in rust
* ( ) cross-compile for arm7
* ( ) deploy on home server
* ( ) make home server accessible from outside network
* old - go through and sort!
* ( ) Test creating executable using [codon](https://github.com/exaloop/codon) [docs](https://docs.exaloop.io/codon/) ; alternatively look at using [cython](https://github.com/cython/cython) [docs](https://cython.readthedocs.io/en/latest/index.html)
* ( ) [read](https://blog.paperspace.com/boosting-python-scripts-cython/) (or competitor to cython?)
* ( ) create subsequent steps related to creating a compiled executable app
* ( ) add blocks and make work with scheduling
* ( ) serialization of plan & schedules to derivation.json -> CLI supporting scheduling from saved plan, schedule next k days
* ( ) thorough refactor 1
* ( ) thorough refactor 2
* ( ) develop tracker class
* ( ) full (albeit minimal) working CLI
* ( ) make entries with categories only add to desired blocks (notably for work tasks)
* ( ) add earliest and latest dates to tasks and entries - for scheduling
* ( ) add earliest and latest times for scheduling
* ( ) add json writers (& update tests)
* ( ) write logger (& update tests)
* ( ) add logging to entire library (& update tests)
* ( ) get planning working as expected (& update tests)
* ( ) get scheduling working as expected (& update tests)
* ( ) make adhoc counterpart to plan, containing tasks (but one-off, non-derivable) -> adhoc folder containing a file for each day (& update tests)
* ( ) add tracking module mvp (& update tests)
* ( ) Tracking functionality
* ( ) str and repr for DefaultDay
* ( ) Basic tests for adding entries to schedule
* ( ) advanced adding and deleting functionality
* ( ) write signal package for messaging (& update tests)
* ( ) Read [gtd article](https://hamberg.no/gtd,) [what-is-gtd](https://gettingthingsdone.com/what-is-gtd/,) [wikipedia](https://en.wikipedia.org/wiki/Getting_Things_Done)
* ( ) Map out [structure of system](https://www.notion.so/Design-and-Architecture-Notes-1a0633919e2e45838e3794e4aad4bee4?pvs=21)
