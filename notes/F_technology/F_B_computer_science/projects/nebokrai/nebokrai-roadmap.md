# Nebokrai

## Roadmap

1. Implement serde for declaration
2. Minimal example for Aeson
3. Implement display functions
4. Write serde tests
5. Add circular tests: assert input == output

* Build devshells: haskell-docker, nebokrai/haskell/flake.nix, nebokrai/hs-pg/flake.nix when I have the time & bandwidth
* Find simplest possible haskell+nix setup for starting out
* ( ) Watch [video on optparse-applicative](https://www.youtube.com/watch?v=mS186vrNleE)
* ( ) Watch [video 2](https://www.youtube.com/watch?v=RtYWKG_zZrM)
* ( ) Watch [video 3](https://www.youtube.com/watch?v=KkXe8gSkbuc)
* ( ) write basic, minimal tests for opening, planning, scheduling, and tracking
* ( ) add LaTeX generation for plans and schedules!!!- ( ) add beautiful image code generation for logs
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
* ( ) khal etc.- ( ) make separate (importable by overarching master package) TUI editor with textual for the declaration.json file. Should be easy and enjoyable to use
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
* Become intimately familiar with the ins and outs of taskwarrior
  * ( ) read the docs
  * ( ) use in Docker container
  * ( ) read the codebase
* Become intimately familiar with the ins and out of neorg and its modules
  * ( ) read the docs (wiki)
  * ( ) use in Docker container
  * ( ) read the codebase
  * ( ) read the additional module code as well
* Become intimately familiar with the structure of lua plugins in neovim
  * ( ) [neovim.io/doc/user](https://neovim.io/doc/user/)
  * ( ) read [neovim.io/doc/user/develop.html](https://neovim.io/doc/user/develop.html)
  * ( ) skim [neovim wiki for developers](https://github.com/neovim/neovim/wiki#developers)
  * ( ) browse [sourcegraph.com/github.com/neovim/neovim](https://sourcegraph.com/github.com/neovim/neovim)
  * ( ) pick 6 interesting plugins and review their code
