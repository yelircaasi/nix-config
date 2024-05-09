# Version Control

 [read](https://nvie.com/posts/a-successful-git-branching-model/)
 [git](https://git-scm.com/)

## Git Alternatives / Complements

* (2) [jj](https://github.com/martinvonz/jj) - (R) [Chris Krycho article](https://v5.chriskrycho.com/essays/jj-init/)
* (T) [Sapling](https://sapling-scm.com/) -
* (T) [Bazaar](https://www.gnu.org/software/bazaar/) - Multiplatform version control system supporting diffferent workflows; it is part of the GNU Project, and it is free software sponsored by Canonical.
* (T) [fossil-mirror](https://github.com/drhsqlite/fossil-mirror) - A simple, high-reliability, distributed software configuration management system with these advanced features: project management, built-in web interface, friendly self-hosting, simple networking, all-in-one standalone executable, and much more.
* (T) [Mercurial](https://www.mercurial-scm.org/) -
* (T) [got](https://github.com/gotvc/got)
* (2) [nx](https://nx.dev/)
* (T) [darcs](https://darcs.net/) + [darcs-hub](https://hub.darcs.net/)

## .gitignore Utilities

* (2.5) [add-gitignore](https://github.com/TejasQ/add-gitignore) - An interactive CLI that generates a .gitignore for your project based on your needs. → [nectar.js.org/,](https://nectar.js.org/)[pkg,](https://github.com/vercel/pkg,)[link](https://stackoverflow.com/questions/70662886/how-to-compile-node-js-to-binary-release-with-native-modules)
   | (2.5) [shihanng/gig](https://github.com/shihanng/gig)

## Diff

* (2) [delta](https://github.com/dandavison/delta)
* (2.5) [xxdiff](https://github.com/blais/xxdiff)
* (2) [diff2html-cli](https://github.com/rtfpessoa/diff2html-cli) - Parse git diffs as JSON and generate pretty HTML.
* (1) [vimdiff](https://www.freecodecamp.org/news/compare-two-files-in-linux-using-vim/) - vimdiff
* (2) [Wdiff](https://www.gnu.org/software/wdiff/) - The GNU wdiff program is a front end to diff for comparing files on a word per word basis. It collects the diff output and uses it to produce a nicer display of word differences between the original files.
* (2) [difftastic](https://github.com/Wilfred/difftastic) Syntax-aware structured diff tool.
* (2) [Meld](https://meldmerge.org/) - Meld is a visual diff and merge tool that helps you compare files, directories, and version controlled projects. (Gnome tool)
* (5) [dirdiff](https://github.com/OCamlPro/dirdiff)
* (2) [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) - Make your diffs human readable instead of machine readable. (Perl)
* (2.5) [ydiff](https://github.com/ymattw/ydiff) - View colored, incremental diff.
* (5) [leven-cli](https://github.com/sindresorhus/leven-cli) - Measure the difference between two strings using the Levenshtein distance algorithm. - look at the code, look for alternatives (JavaScript)

## Git Servers

* (2) github
* (2) gitlab
* (2.5) [sourcehut](https://sourcehut.org/)
   | (2.5) [gogs](https://gogs.io/)
   | (2.5) [codeberg](https://codeberg.org/)
   | (2.5) [radicle](https://radicle.xyz/)
   | (2.5) [gitea](https://about.gitea.com/)

## Git Hooks → [Git hooks, practical uses (yes, even on Windows) - YouTube](https://www.youtube.com/watch?v=fMYv6-SZsSo)

* (5) [git-vogue: A framework for pre-commit checks.](https://hackage.haskell.org/package/git-vogue)
* (2) [→](https://githooks.com/)
* (R) [→](https://www.atlassian.com/git/tutorials/git-hooks)
* (R) [→](https://verdantfox.com/blog/view/how-to-use-git-pre-commit-hooks-the-hard-way-and-the-easy-way)
* (R) [Git - Git Hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks), [git-scm.com/docs/githooks](https://git-scm.com/docs/githooks)
* (2) [lefthook](https://github.com/evilmartians/lefthook) - looks really really good
* (1) [pre-commit](https://pre-commit.com/) - A framework for managing and maintaining multi-language pre-commit hooks - already using; just need to compare with lefthook (R) [Git-Hook-Management mit Pre-Commit](https://www.dev-insider.de/git-hook-management-mit-pre-commit-a-84e48ab4399984ccf6158c0955e10a18/)
* (R) [Git pre-commit hook in 45 seconds! #Shorts - YouTube](https://www.youtube.com/shorts/d70a8PXbrb8)
* (2.5) [overcommit](https://github.com/sds/overcommit) - A fully configurable and extendable Git hook manager - looks good, just need to compare with lefthook and pre-commit
* (2.5) [husky](https://github.com/typicode/husky) [Husky - Git hooks](https://typicode.github.io/husky/#/)

## Non-Source Version Control → see also `got` in alternatives

* (T) [snowfs](https://github.com/snowtrack/snowfs) - SnowFS - a fast, scalable version control file storage for graphic files
* (1) [dvc](https://dvc.org/) - already using; compare to dolt
* (2) [dolt](https://github.com/dolthub/dolt) - Dolt is Git for Data! Dolt is a SQL database that you can fork, clone, branch, merge, push and pull just like a git repository. - looks really good

## GUI

* (2) [Gitnuro](https://github.com/JetpackDuba/Gitnuro) - FOSS, written in Kotlin
   |  (2.5) [gittyup](https://github.com/Murmele/Gittyup)
   |  (2.5) [gitg](https://wiki.gnome.org/apps/gitg)
   |  (2.5) [GitCola](https://git-cola.github.io/) - Git Cola is a sleek and powerful graphical Git client. Written in Python and GPL-licensed. (Python)
   |  (2.5) [rabbitvcs](https://github.com/rabbitvcs/rabbitvcs)[Rabbit VCS](http://rabbitvcs.org/) - RabbitVCS is a set of graphical tools written to provide simple and straightforward access to the version control systems you use.
   |  (2.5) [gitbreeze](https://gitbreeze.dev/) - Vershd is the free for personal use effortless Git GUI for Windows, Mac, & Linux. - not FOSS, but interesting (Python)
   |  (2.5) [Gitg](https://wiki.gnome.org/Apps/Gitg) - Gitg is the GNOME GUI client to view git repositories.
   |  (2.5) [GitKraken](https://www.gitkraken.com/) - The downright luxurious Git GUI client for Windows, Mac & Linux. - will try for the experience, but too proprietary for me
* (2) [scgit](https://git.sr.ht/~misterio/scgit)

## Multi-Repo

* (2.5) [git-workspace](https://github.com/orf/git-workspace)
   | (2.5) [gitbatch](https://github.com/isacikgoz/gitbatch)
   | (2.5) [garden](https://github.com/davvid/garden/)
   | (2.5) [gita](https://github.com/nosarthur/gita) - A command-line tool to manage multiple git repos.
   | (2.5) [git-repo](https://github.com/GerritCodeReview/git-repo)
   | (2.5) [multi-gitter](https://github.com/lindell/multi-gitter)
   | (2.5) [mani](https://github.com/alajmo/mani)
   | (2.5) [git-repo-updater](https://github.com/earwig/git-repo-updater)
   | (2.5) [git-plus](https://github.com/tkrajina/git-plus)
   | (2.5) [multi-git-status](https://github.com/fboender/multi-git-status)

## Commit, Versioning

* (2.5) [commitlint.js.org](https://commitlint.js.org/#/reference-rules) [fcc tutorial](https://www.freecodecamp.org/news/how-to-use-commitlint-to-write-good-commit-messages/)
   | (2.5) [conventionalcommits.org/en/v1.0.0/](https://www.conventionalcommits.org/en/v1.0.0/)
   | (2.5) [cz-cli](https://github.com/commitizen/cz-cli)
   | (2.5) [gitlint](https://github.com/jorisroovers/gitlint)
   | (2.5) [cz-git](https://github.com/Zhengqbbb/cz-git) - [site](https://cz-git.qbb.sh/)  * Interactively generate standardized commit messages.
   | (2.5) [node-semantic-git-commit-cli](https://github.com/JPeer264/node-semantic-git-commit-cli) - Ensure semantic commits messages. With emoji support. - supports per-project rules
   | (2.5) [git-cz](https://github.com/streamich/git-cz) - Semantic Git commits.
   | (2.5) [rcz](https://github.com/Cassin01/rcz) - A tool to write a commit message based on “Conventional Commits”.

## TUI / FZF for Git

* (2.5) [fzf-git.sh](https://github.com/junegunn/fzf-git.sh) - bash and zsh key bindings for Git objects, powered by fzf.
   | (2.5) [git-fuzzy](https://github.com/bigH/git-fuzzy)
   | (2.5) [forgit](https://github.com/wfxr/forgit) - Utility tool for `git` taking advantage of fuzzy finder fzf. - really nice commands
* (2.5) [lazygit](https://github.com/jesseduffield/lazygit) - A simple terminal UI for git commands, written in Go with the gocui library.
   | (2.5) [gitui](https://github.com/extrawurst/gitui) - The comfort of a git GUI but right in your terminal, with keyboard only control, scalable UI, and features all the necessary operations of git.
   | (2.5) [gitu](https://github.com/altsem/gitu)
   | (2.5) [tig](https://github.com/jonas/tig) - An ncurses-based text-mode interface for `git` that can act as a repository browser, but can also assist in staging changes for commit at chunk level. - maybe a bit less beautiful; look at to see if it has any unique features
* (2) [grv](https://github.com/rgburke/grv) - Text-mode interface for git with customisable vi bindings. current fork [grv](https://github.com/justinian/grv)- looks good, but a bit dormant

## Visualization

* (2) [git-quick-stats](https://github.com/arzzen/git-quick-stats) - Git quick statistics is a simple and efficient way to access various statistics in git repository. -> could improve interface and rewrite in a faster language
* (2) [onefetch](https://github.com/o2sh/onefetch)- Git repository summary on your terminal.
* (2) [git-stats](https://github.com/IonicaBizau/git-stats) - Local git statistics including GitHub-like contributions calendars. → make pie chart into square (fibonacci-style tiling!) - need to fork and improve → shows contribution calendar!!! use for work, too
* (5) [gitsummary](https://github.com/glenreesor/gitsummary) - A better git status that lists stashes, file statuses, branch list, all nicely formatted with color. $$$
* (2) [cgit-pink](https://git.causal.agency/cgit-pink/about/)
   | (6) [git.zx2c4.com/cgit/](https://git.zx2c4.com/cgit/) - A hyperfast web frontend for git repositories written in C.
* (5) [ghcal](https://github.com/IonicaBizau/ghcal) - nice GH calendar → hack and inmprove; good JS exercise for me

## Git Extensions

* (2) [git-extras](https://github.com/tj/git-extras) GIT utilities -- repo summary, repl, changelog population, author commit percentages and more
* (2) [git-extra-commands](https://github.com/unixorn/git-extra-commands) - collected git helper scripts
* (N) [vmn](https://github.com/final-israel/vmn) - git-based automatic versioning and state recovery solution agnostic to language or architecture
* (2) [git-annex](http://source.git-annex.branchable.com/?p=source.git) - [git-annex.branchable.com/](https://git-annex.branchable.com/) Manages files with `git`, without checking the file contents into git; very useful to manage large/binary files.
* (2.5) [git-annex assistant](https://git-annex.branchable.com/)

## Git QoL

* (2) [mkgit](https://github.com/cosmicwanderer7/mkgit) - automates the process of creating a new GitHub repository, initializing it with a README file, and pushing the initial commit to the remote repository
* (2) [git-peek](https://github.com/Jarred-Sumner/git-peek) - git peek is the fastest way to open a remote git repository in your local text editor.
* (2) [git-secret](https://github.com/sobolevn/git-secret) - A bash tool which stores private data inside a git repo; it uses users' public keys, allowing trusted users to access encrypted data using pgp and their secret keys.
* (5) [dev-time-cli](https://github.com/samverschueren/dev-time-cli)- Get the current local time of a GitHub user.
* (2.5) [git-interactive-rebase-tool](https://github.com/MitMaro/git-interactive-rebase-tool)
   |  (2.5) [npmjs.com/package/rebase-editor](https://www.npmjs.com/package/rebase-editor)
* (2) [git-standup](https://github.com/kamranahmedse/git-standup)- Recall what you did on the last working day. - looks good, great idea, just make compatible with semantic commits and write in a lighter language -> maybe (5)
* (2) [scm_breeze](https://github.com/ndbroadbent/scm_breeze) - Streamline your git workflow
* (2) [gee](https://github.com/human37/gee) - CLI repository manager and automation tool written in rust.
* (R) [lazygit vs neogit](https://www.reddit.com/r/neovim/s/ABJNQ1S1ux) lazygit vs neogit
* (2) [bugwarrior](https://github.com/ralphbean/bugwarrior) [bugwarrior](https://bugwarrior.readthedocs.io/en/latest/index.html)
* (R) Compare sourcehut, codeberg, gitlab to github -> which have something analogous to an organization? (Important for mirroring my organizations -> otherwise separate account? Stay on Github? All in same account? Nah, there MUST be a way
* (R) [GitHub - git/git: Git Source Code Mirror - This is a publish-only repository but pull requests can be turned into patches to the mailing list via GitGitGadget (](https://github.com/git/git)
* (2) [Gitless](https://gitless.com/)
* (2) [Introduction · Tig - Text-mode interface for Git](https://jonas.github.io/tig/)
* (2) [git log alias](https://www.reddit.com/r/git/s/bu6LppB573) git log alias
* (2) [git-fire](https://github.com/qw3rtman/git-fire) - Save Your Code in an Emergency
* (5) [git-wtf](https://github.com/michaelklishin/git-wtf)

## Reimplementation

* (5) [gitoxide](https://github.com/Byron/gitoxide) -> see video series

## Development

* (2) [gitgitgadget](https://gitgitgadget.github.io/). Please follow Documentation/SubmittingPatches procedure for any of your improvements.

## Git Education

* (R) [So You Think You Know Git?](https://youtu.be/aolI_Rz0ZqY?si%3DDQSGDv-KVeKOvJkM)

## Github

* (2) [prs](https://github.com/dhth/prs) -> make for `glab` too -> (5)
* (2) [gh](https://cli.github.com/)

## Gitlab

* (2) [glab](https://gitlab.com/gitlab-org/cli)
