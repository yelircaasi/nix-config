# proglang table

* [item_synchronizer](https://github.com/bergercookie/item_synchronizer)
* [example of semantic diff](https://github.com/Ekleog/todiff) - look at algorithms and implementations in src
* [item_synchronizer](https://github.com/bergercookie/item_synchronizer)
* [transpiler](https://jarble.github.io/transpiler/)
* look at sync merge  algorithm: [gotas](https://github.com/szaffarano/gotas)

* Where to put feature (row) descriptions in the markdown source? -> in italic -> how to separate from language-specific ('in-box') notes?
* rename markdown_feat_view and markdown_lang_view to featview and langview -> or md-featview and md-langview?
* Discussion: [chat.openai.com/c/d53450a7-03f3-4f4f-8f4e-30c778963c36](https://chat.openai.com/c/d53450a7-03f3-4f4f-8f4e-30c778963c36)
* Make giant hyperpolyglot table for different equivalent tasks, keywords, concepts, etc
* make not only clickable (to display/collapse groups of rows and columns), but also vim-navigable
* Use ‘⟩ ’ for REPL, as opposed to $ for bash → or ‘ℜ ’? Use REPL> in source, with option to customize it
* Menus at the top for Languages and for Features, arranged hierarchically in groups with groups also selectable → Optiona at the top to toggle selecting/unselecting all (’Select/unselect all’ / ‘Toggle select all’ → or two separate options?)
* Add menu for color selection → how to do syntax highlighting? which JS library to use?
* Write in Python to use Pygments library
* → need to write bidirectional update logic for diffs. Use Pandas? Possibly overkill, but undeniably useful
* How to merge edits at the same block? Use a Python-wrapped got diff?
* [ ] \*\*\*\*\*\*\*\*\* [teachcode](https://github.com/madlabsinc/teachcode) - Guide for the earliest lessons of coding.

|— static

  |— css

   |— html

   |— js
* Design ideas:
* Top bar, slightly lighter than main background, with title (’Programming Language Table’) and on the right the following icons (maybe rounded squares):
*   documentation (scroll image, including friendly introduction - and disclaimer)
*   version number (simply show number)
*   color theme selection (palette icon)
*   column selection (3 vertical lines)
*   row selection (3 horizontal lines)
*   Github link (Github icon) → also dropdown for consistency, with options to go to main code or to html folder
*   donation link (ko-fi logo, or whatever I end up using, or coffee cup with menu if I use multiple services)
* Support optional verbose contents for each cell, separated by a horizontal line in Markdown.
* Make columns orderable, both in the drop-down menu and the table itself.
* Hover text for all icons
* Toggle boilerplate - include in markdown subsection ‘### Boilerplace’ with the full code block → or just 2 code blocks, with the second then parsed as boilerplate?
* Use cell selection in the table, including multiple
* For all options and actions, support mouse click and vim-style keybindings (including number modifiers!)
*   click / space bar to toggle boilerplate in a cell (space bar when selected)
* [hexdocs.pm/phoenix_live_view/Phoenix.LiveView.html](https://hexdocs.pm/phoenix_live_view/Phoenix.LiveView.html)
* [phoenixframework.org/](https://www.phoenixframework.org/)
* [orgs/alpha2phi/repositories](https://github.com/orgs/alpha2phi/repositories)
