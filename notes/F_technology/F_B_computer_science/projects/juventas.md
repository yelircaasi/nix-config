# juventas.nvim

* [nbqa](https://github.com/nbQA-dev/nbQA)
* [benlubas/molten-nvim/blob/main/docs/Notebook-Setup.md](https://github.com/benlubas/molten-nvim/blob/main/docs/Notebook-Setup.md)
* [jupyter-tutorial.readthedocs.io/de/latest/intro.html](https://jupyter-tutorial.readthedocs.io/de/latest/intro.html)
* [ipython.org/index.html](https://ipython.org/index.html)
* [jupyterbook.org/en/stable/intro.html#](https://jupyterbook.org/en/stable/intro.html#)
* [dicussion on Discord](yeah that entire class was a mess. It's the reason that I "made" molten though, so I guess something good came out of it)
* [nvim screen capture](https://discord.com/channels/834325286664929280/877666474888675368/1232074272743096373)
* → [books](https://libgen.rs/search.php?&req=jupyter&phrase=1&view=simple&column=def&sort=year&sortmode=DESC)
* [janakiev.com/blog/jupyter-virtual-envs/](http://janakiev.com/blog/jupyter-virtual-envs/)
* [en.m.wiktionary.org/wiki/Jupiter](https://en.m.wiktionary.org/wiki/Jupiter)
* {ju} [tweag/jupyenv: Declarative and reproducible Jupyter environments - powered by Nix](https://github.com/tweag/jupyenv)
* {juventas} [JupyterWith Next - Tweag](https://www.tweag.io/blog/2022-11-17-jupyter-with-next/)
* Thunor
* Phaethon
* Nike
* [AndrewRadev/inline_edit.vim](https://github.com/AndrewRadev/inline_edit.vim)
* Juniper? Junyper? Junipyr?
* Notebookish.nvim, Daftar.nvim, Zapys.nvim, cuaderno.nvim, lyterate.nvim, Dias (grc)
* [edgarogh/ipynbat](https://github.com/edgarogh/ipynbat)
* name notebat?
* [paw-lu/nbpreview](https://github.com/paw-lu/nbpreview)
* [jsvine/nbpreview](https://github.com/jsvine/nbpreview)
* [r/neovim/comments/wfut6c/introducing_femaco_catalyze_your_fenced_markdown/](https://www.reddit.com/r/neovim/comments/wfut6c/introducing_femaco_catalyze_your_fenced_markdown/)
* maybe save code to a separate tempfile and run lsp on that, then pass lsp feedback to relevant location in nbview.
* [SyntaxRange - Define a different filetype syntax on regions of a buffer. : vim online](https://www.vim.org/scripts/script.php?script_id=4168)
* [chat.openai.com/c/fcf2129c-4772-4537-b029-d1e1fa1f276b](https://chat.openai.com/c/fcf2129c-4772-4537-b029-d1e1fa1f276b) Python Plugin Neovim Setup
* same as Jupyter web, but using text view
* Components: class Converter()

.ipynb to textview nb2text(...)
* textview to .ipynb text2nb(...)
* class Buffer()
* Converter.collect_textview_diffs()
* Converter.collect_ipynb_diffs()
* Converter.update_ipynb_from_textview()
* Converter.update_textview_from_ipynb()
* other concerns:
* connect to server
* syntax highlighting
* LSP
* completion
* multi-language support
* tests
* image rendering (wezterm and kitty)
* > how to write a plugin in python and interact with lua
* make each cell its own buffer? keep separate code-only buffer for LSP?
* [chat.openai.com/c/fcf2129c-4772-4537-b029-d1e1fa1f276b](https://chat.openai.com/c/fcf2129c-4772-4537-b029-d1e1fa1f276b)
* [dccsillag/magma-nvim](https://github.com/dccsillag/magma-nvim)
* [luk400/vim-jukit](https://github.com/luk400/vim-jukit)
* [martibosch.github.io/jupyter-emacs-universe/](https://martibosch.github.io/jupyter-emacs-universe/)
* [emacs-jupyter/jupyter](https://github.com/emacs-jupyter/jupyter)
* [millejoh/emacs-ipython-notebook](https://github.com/millejoh/emacs-ipython-notebook)
* [millejoh.github.io/emacs-ipython-notebook/](https://millejoh.github.io/emacs-ipython-notebook/)
* [isaacganoung.com/articles/tutorials/jupyter-notebook-in-emacs.html](https://isaacganoung.com/articles/tutorials/jupyter-notebook-in-emacs.html)

## Virtual Text

* Yes, you can add virtual text to the beginning of each line in Neovim using a plugin or by directly configuring Neovim. Here's a way to achieve this:
* You can use the `nvim_buf_set_virtual_text()` function provided by Neovim's API to add virtual text to each line. You can invoke this function through a script or by using Neovim's built-in functions.
* Here's an example script in Lua that adds virtual text to the beginning of each line:

```lua

-- Define a function to add virtual text to the beginning of each line
* function add_virtual_text(bufnr)local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)* for i, line in ipairs(lines) do*     -- Add virtual text "| " to the beginning of each line*     vim.api.nvim_buf_set_virtual_text(bufnr, -1, i - 1, {{'| ', 'Comment'}}, {})* end
* end

-- Call the function on each buffer
* for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do* add_virtual_text(bufnr)
* end

```
* To achieve notebook-style cells with virtual text in Neovim, you can use the `nvim_buf_set_virtual_text()` function to add custom virtual text to specific lines in your buffer. Additionally, you can utilize ASCII art to create the visual boundaries for the cells.
* Here's a Lua script that adds notebook-style cells around each line of Python code:

```lua
* function add_notebook_cells(bufnr)* local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)* for i, line in ipairs(lines) do*     -- Add notebook-style cells around each line*     local notebook_line = '│  ' .. line .. '  │'*     local notebook_border = '┌' .. string.rep('─', #notebook_line - 2) .. '┐'
*     -- Set virtual text for the notebook cell*     vim.api.nvim_buf_set_virtual_text(bufnr, -1, i - 1, {{notebook_border, 'Comment'}, {notebook_line, 'Comment'}, {notebook_border, 'Comment'}}, {})* end
* end

-- Call the function on each buffer
* for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do* add_notebook_cells(bufnr)
* end

```
* This Lua script iterates over each line of the buffer, adding notebook-style cells around the line content. It then uses `nvim_buf_set_virtual_text()` to add the custom virtual text to the buffer.
* To execute this script, save it as `add_notebook_cells.lua` in your Neovim configuration directory and then invoke it from your Neovim configuration file (`init.lua`) using `:luafile add_notebook_cells.lua`. This will add the notebook-style cells to all buffers currently open in Neovim.
* Please note that virtual text added using this method is purely visual and does not affect the underlying contents of the file. Additionally, you may need to adjust the ASCII art and styling to fit your preferences and display needs.

## filetype-specific keybinds

* Yes, you can define key bindings that are specific to a certain file type (filetype) in Neovim. This is useful for defining mappings or commands that are relevant only when editing files of a particular type, such as Python, Markdown, or JavaScript.
* Here's how you can define filetype-specific key bindings in Neovim:

```vim

" Define a key binding that is valid only for Python files
* autocmd FileType python nnoremap <buffer> <Leader>t :!pytest %<CR>

" Define a key binding that is valid only for Markdown files
* autocmd FileType markdown nnoremap <buffer> <Leader>c :!pandoc -s -o %:r.pdf %<CR>

```
* In these examples:
* `autocmd FileType python` and `autocmd FileType markdown` set up autocmds (autocommands) that trigger when Neovim detects a buffer with the corresponding file type.
* `nnoremap <buffer> <Leader>t :!pytest %<CR>` defines a normal mode mapping (`nnoremap`) that executes the `pytest` command when triggered by the leader key followed by `t` (`<Leader>t`). The `%` represents the current file's path, and `<CR>` simulates pressing the Enter key.
* `nnoremap <buffer> <Leader>c :!pandoc -s -o %:r.pdf %<CR>` defines another normal mode mapping that runs the `pandoc` command to convert the Markdown file to PDF when triggered by the leader key followed by `c`.
* By using `<buffer>` in the mapping command, you ensure that the mapping is local to the current buffer. This means that the mapping will only be active when editing a file of the specified filetype, and it won't affect other buffers.
* You can add these mappings to your `init.vim` or `init.lua` configuration file in Neovim to define filetype-specific key bindings according to your preferences.

## Question for ChatGPT

* What would be the most difficult parts of developing a neovim plugin providing a neovim-native interface to Jupyer notebook (.ipynb) files?
* Developing a Neovim plugin to provide a Neovim-native interface to Jupyter notebook (.ipynb) files could present several challenges, including:
* 1. Parsing and Understanding the .ipynb Format: Jupyter notebook files are JSON-based and have a complex structure. Developing a robust parser to handle this format and extract relevant information such as code cells, markdown cells, outputs, metadata, etc., can be challenging.
* 2. Rendering and Displaying Rich Content: Jupyter notebooks support rich content such as Markdown, HTML, images, LaTeX, and interactive widgets. Implementing a rendering engine within Neovim to display this rich content accurately and interactively could be non-trivial.
* 3. Code Execution and Kernel Interaction: Jupyter notebooks rely on kernels to execute code. Providing a seamless interface for code execution, kernel management, and interaction with kernel outputs within Neovim would require integration with Jupyter's messaging protocol (e.g., Jupyter messaging over ZeroMQ or WebSockets).
* 4. User Interface and Interactivity: Jupyter notebooks offer features like collapsible sections, cell execution status indicators, interactive widgets, and cell metadata. Replicating these features within Neovim while maintaining a consistent and intuitive user interface could be challenging.
* 5. Maintaining Compatibility and Performance: Neovim runs in a terminal environment, which may impose limitations on rendering capabilities and interactivity compared to web-based Jupyter interfaces. Ensuring compatibility with different terminal emulators and maintaining acceptable performance levels for large notebooks could be challenging.
* 6. Handling Notebook Structure and Modifications: Jupyter notebooks can have a hierarchical structure with nested cells and metadata. Implementing functionality to create, modify, rearrange, and delete cells while preserving the integrity of the notebook structure would require careful design and implementation.
* 7. Testing and Documentation: Comprehensive testing, including unit tests, integration tests, and user acceptance tests, would be essential to ensure the plugin's reliability and robustness. Additionally, providing clear and comprehensive documentation to guide users on installation, configuration, and usage would be crucial.
* Overall, while developing a Neovim plugin to interface with Jupyter notebook files could be challenging, it could also be a rewarding project that enhances the productivity and workflow of Neovim users who work with Jupyter notebooks.
* Juventas.nvim (jove.nvim? Giove.nvim? Iuppiter.nvim): full Jupyter notebook functionality for nvim (comparable to VSCode)
* cat/bat for Jupyter Notebooks

# NBEditor.nvim (Plugin without Code Server)

* start simpler: : attractive viewing of jupyter notebooks, with nice frames
* → tricky question: how to allow editing within cell to change contents? (perhaps not the simplest idea, but certainly enlightening)

# Juventas.nvim

* add notebooks to goneovim! or focus on wezterm (yep, probably that)

# VimQTConsole - qtconsole with full vim keybindings and nvim as a backend editing server

* [jupyter/jupyter_console](https://www.google.com/url?q=https://github.com/jupyter/jupyter_console&sa=D&source=editors&ust=1711378556488622&usg=AOvVaw3q1vDtf6fyEQu-p-e70-w_) - [...](https://www.google.com/url?q=https://jupyter-console.readthedocs.io/en/latest/&sa=D&source=editors&ust=1711378556488849&usg=AOvVaw31rrl63oIbbF1NC7VNIqC2)[Docs](https://www.google.com/url?q=https://jupyter-console.readthedocs.io/en/latest/&sa=D&source=editors&ust=1711378556489067&usg=AOvVaw2yjTrOFvZCSeRAVWj0JRKJ)
* [jupyter/qtconsole](https://www.google.com/url?q=https://github.com/jupyter/qtconsole&sa=D&source=editors&ust=1711378556489338&usg=AOvVaw013fqtfUD4k1GUfIc8CgBv) - [...](https://www.google.com/url?q=https://qtconsole.readthedocs.io/en/stable/index.html&sa=D&source=editors&ust=1711378556489553&usg=AOvVaw0yu7A3bpgh5LKBfhA6ZHwb)[Docs](https://www.google.com/url?q=https://qtconsole.readthedocs.io/en/stable/index.html&sa=D&source=editors&ust=1711378556489780&usg=AOvVaw0t2Z5lll7G7F1yf0PN8fXL)
* → download and try out both console and qtconsole
* fork - add vim keybindings and color scheme support, eventually even make controllable from within nvim (wm/launcher pre-configured layout to open both, ready-to-use)
* [Neovim and Qtconsole setup for Data Science with Python | My Blog](https://www.google.com/url?q=https://www.blog.gambitaccepted.com/2020/04/26/neovim-qtconsole-setup/&sa=D&source=editors&ust=1711378556490220&usg=AOvVaw0387vkYb4K8OJ7yBboOGoa)
* [Demonstration of the Jupyter QtConsole + Vim integration](https://www.google.com/url?q=https://youtu.be/Fi_Xd6h4ncw&sa=D&source=editors&ust=1711378556490428&usg=AOvVaw1S3Bijs78WicgnKS6skWpd)
* [glacambre/firenvim](https://www.google.com/url?q=https://github.com/glacambre/firenvim&sa=D&source=editors&ust=1711378556490685&usg=AOvVaw1Ze8i3BaOuiGgY8kdmfquZ) - something like this for qtconsole, but for qt instead of browser
* [Niche Vim/Neovim Plugins. Overview | by alpha2phi | Medium](https://www.google.com/url?q=https://alpha2phi.medium.com/niche-neovim-plugins-722b34f76291&sa=D&source=editors&ust=1711378556491115&usg=AOvVaw0aufc4LSu8XZcajrli6EWN) - maybe some of these

# Related Projects

* [GCBallesteros/NotebookNavigator.nvim](https://www.google.com/url?q=https://github.com/GCBallesteros/NotebookNavigator.nvim&sa=D&source=editors&ust=1711378556491565&usg=AOvVaw2J-w1XlOL7CNE6bHgRunb_) (old: [...](https://www.google.com/url?q=https://www.maxwellrules.com/misc/nvim_jupyter.html&sa=D&source=editors&ust=1711378556491832&usg=AOvVaw2zXrn72PM8EM9qFzngAt-s)[Maxwell Rules - NeoVim Notebooks](https://www.google.com/url?q=https://www.maxwellrules.com/misc/nvim_jupyter.html&sa=D&source=editors&ust=1711378556492003&usg=AOvVaw2k7ufUE6Fb-Bmxx4xxFZaO))
* [benlubas/molten-nvim](https://www.google.com/url?q=https://github.com/benlubas/molten-nvim&sa=D&source=editors&ust=1711378556492218&usg=AOvVaw1TWxLrw7D3c4CHO3Js5Fyd)
* [dccsillag/magma-nvim](https://www.google.com/url?q=https://github.com/dccsillag/magma-nvim&sa=D&source=editors&ust=1711378556492419&usg=AOvVaw3PMJofJ0yMfkGR-pU6aghr)
* [milanglacier/quarto-nvim](https://www.google.com/url?q=https://github.com/milanglacier/quarto-nvim&sa=D&source=editors&ust=1711378556492609&usg=AOvVaw3KO8gZvDA4ET3gC_nTPMFg)
* [lkhphuc/jupyter-kernel.nvim](https://www.google.com/url?q=https://github.com/lkhphuc/jupyter-kernel.nvim&sa=D&source=editors&ust=1711378556492818&usg=AOvVaw3o0KsblC3ojhObBKQXcoxb)
* [luk400/vim-jukit](https://www.google.com/url?q=https://github.com/luk400/vim-jukit&sa=D&source=editors&ust=1711378556493011&usg=AOvVaw0ZoMvlER2o1JRscac8-Joq)
* [WhiteBlackGoose/magma-nvim-goose](https://www.google.com/url?q=https://github.com/WhiteBlackGoose/magma-nvim-goose&sa=D&source=editors&ust=1711378556493222&usg=AOvVaw0oHurKK8svGvGeGx_IBuZl)
* [untitled-ai/jupyter_ascending.vim](https://www.google.com/url?q=https://github.com/untitled-ai/jupyter_ascending.vim&sa=D&source=editors&ust=1711378556493421&usg=AOvVaw2nqMl9eGqrlRDkUFjPQfX_)
* [...](https://www.google.com/url?q=https://generallyintelligent.com/open-source/2021-10-14-jupyter-ascending/&sa=D&source=editors&ust=1711378556493569&usg=AOvVaw1Pm1s3mkILXNmh1ohh_NSL)[generallyintelligent.com/open-source/2021-10-14-jupyter-ascending/](https://www.google.com/url?q=https://generallyintelligent.com/open-source/2021-10-14-jupyter-ascending/&sa=D&source=editors&ust=1711378556493763&usg=AOvVaw3dAdo7zDHNhMKZDHxLJUst)
* [kiyoon/jupynium.nvim](https://www.google.com/url?q=https://github.com/kiyoon/jupynium.nvim&sa=D&source=editors&ust=1711378556493994&usg=AOvVaw2edSaIUAN4R20v-B2_DN6K)
* [...](https://www.google.com/url?q=https://github.com/kiyoon/jupynium.nvim&sa=D&source=editors&ust=1711378556494126&usg=AOvVaw2G5PjyFNMyAB6H-k50MS1W)[Selenium-automated Jupyter Notebook that is synchronised with NeoVim in real-time.](https://www.google.com/url?q=https://github.com/kiyoon/jupynium.nvim&sa=D&source=editors&ust=1711378556494274&usg=AOvVaw2EplP-OuBGb0ce0w8EEziO)
* [ubaldot/vim-replica](https://www.google.com/url?q=https://github.com/ubaldot/vim-replica&sa=D&source=editors&ust=1711378556494580&usg=AOvVaw3aWha7BH_buz6RJjL8ljzJ)
* [davidbrochart/jpterm](https://www.google.com/url?q=https://github.com/davidbrochart/jpterm&sa=D&source=editors&ust=1711378556494835&usg=AOvVaw1WybNLEjR3KjHAcfSjjrvQ) 
* [luk400/vim-jukit](https://www.google.com/url?q=https://github.com/luk400/vim-jukit&sa=D&source=editors&ust=1711378556495091&usg=AOvVaw3l525nq9qylB62CNPXL2lx)
* [WhiteBlackGoose/magma-nvim-goose](https://www.google.com/url?q=https://github.com/WhiteBlackGoose/magma-nvim-goose&sa=D&source=editors&ust=1711378556495361&usg=AOvVaw3IAkwDos8rsnLMqfiNDKZo)
* [untitled-ai/jupyter_ascending.vim](https://www.google.com/url?q=https://github.com/untitled-ai/jupyter_ascending.vim&sa=D&source=editors&ust=1711378556495632&usg=AOvVaw3n1qJPHhWl1ISrXRlKtDJF)
* [szymonmaszke/vimpyter](https://www.google.com/url?q=https://github.com/szymonmaszke/vimpyter&sa=D&source=editors&ust=1711378556495903&usg=AOvVaw3NFiEu8mWqP-avlzKJhqVT)
* [dccsillag/magma-nvim](https://www.google.com/url?q=https://github.com/dccsillag/magma-nvim&sa=D&source=editors&ust=1711378556496170&usg=AOvVaw1niGYImzN8mxJYrhrvSef3)
* [luk400/vim-jukit](https://www.google.com/url?q=https://github.com/luk400/vim-jukit&sa=D&source=editors&ust=1711378556496391&usg=AOvVaw0JIt5aW-X_hSVisglFJvWD)
* [hanschen/vim-ipython-cell](https://www.google.com/url?q=https://github.com/hanschen/vim-ipython-cell&sa=D&source=editors&ust=1711378556496619&usg=AOvVaw0zA8wm8NWK3yoRggJb6k_5)
* [subnut/nvim-ghost.nvim](https://www.google.com/url?q=https://github.com/subnut/nvim-ghost.nvim&sa=D&source=editors&ust=1711378556496846&usg=AOvVaw1DHYdBBp45TSTxb6sQ1cdS)
* [hanschen/vim-ipython-cell](https://www.google.com/url?q=https://github.com/hanschen/vim-ipython-cell&sa=D&source=editors&ust=1711378556497149&usg=AOvVaw26SaJdqVCvyTs12H6y0BJz)
* [mljar.com/blog/jupyter-notebook-presentation/](https://www.google.com/url?q=https://mljar.com/blog/jupyter-notebook-presentation/&sa=D&source=editors&ust=1711378556497485&usg=AOvVaw1hARHPOnXfFOEtKST-Y6HX)
* [http://millejoh.github.io/emacs-ipython-notebook/](https://www.google.com/url?q=http://millejoh.github.io/emacs-ipython-notebook/&sa=D&source=editors&ust=1711378556497784&usg=AOvVaw0CdCo5ywk7O7wjQYxgxqQ2)
* [Jupyter Notebook + Vim/Neovim. Vim/Neovim code editing experience for… | by alpha2phi | Medium](https://www.google.com/url?q=https://alpha2phi.medium.com/jupyter-notebook-vim-neovim-c2d67d56d563&sa=D&source=editors&ust=1711378556498068&usg=AOvVaw1Uwy2xRKtc34g4pZ5615Ue)
* [Demonstrating Vim-Jupyter integration](https://www.google.com/url?q=https://youtu.be/h59cbg4HqpY&sa=D&source=editors&ust=1711378556498319&usg=AOvVaw2s9zSsDiFN1Tv1n8mQ5KAq)
* [richban.tech/python-jupyter-notebooks-development-in-neo-vim](https://www.google.com/url?q=https://richban.tech/python-jupyter-notebooks-development-in-neo-vim&sa=D&source=editors&ust=1711378556498578&usg=AOvVaw0x85OUjMNQp4Q9uP9dJ77d)
* [Reddit - Is there any plugin to edit and run jupyter-notebook in nvim](https://www.google.com/url?q=https://www.reddit.com/r/neovim/comments/mjyrfu/is_there_any_plugin_to_edit_and_run/&sa=D&source=editors&ust=1711378556498888&usg=AOvVaw1OzhuBgs4l7kmPMuoZYA_F)
* [Reddit - Nicer jupyter notebook workflow with neovim thanks to Jupytext and mini.ai](https://www.google.com/url?q=https://www.reddit.com/r/neovim/comments/x0hf25/nicer_jupyter_notebook_workflow_with_neovim/&sa=D&source=editors&ust=1711378556499263&usg=AOvVaw0t2rLTBexNVpi8h4gKFuH2)
* [martibosch.github.io/jupyter-emacs-universe/](https://www.google.com/url?q=https://martibosch.github.io/jupyter-emacs-universe/&sa=D&source=editors&ust=1711378556499570&usg=AOvVaw0GiTcETqWwNGaka1uqYiG1)

# General Resources

* [GitHub - fastai/nbdev: Create delightful software with Jupyter Notebooks](https://www.google.com/url?q=https://github.com/fastai/nbdev&sa=D&source=editors&ust=1711378556500045&usg=AOvVaw2CAoFdFPvKNPkgBuSPDWXS)
* [Related projects — xeus documentation](https://www.google.com/url?q=https://xeus.readthedocs.io/en/latest/related.html&sa=D&source=editors&ust=1711378556500316&usg=AOvVaw3aHR-JG1zAukA3AN49azW1)
* [jupytext.readthedocs.io/en/latest/using-cli.html](https://www.google.com/url?q=https://jupytext.readthedocs.io/en/latest/using-cli.html&sa=D&source=editors&ust=1711378556500596&usg=AOvVaw1FZDj4EZ2IYbQu2FOF2-wz)
* [Installation · IRkernel](https://www.google.com/url?q=https://irkernel.github.io/installation/&sa=D&source=editors&ust=1711378556500859&usg=AOvVaw2PW6qOrsozpEJvd0l91_at)
* [Toomey books](https://www.google.com/url?q=http://libgen.is/search.php?%26req%3Dtoomey%26phrase%3D1%26view%3Dsimple%26column%3Ddef%26sort%3Dyear%26sortmode%3DDESC&sa=D&source=editors&ust=1711378556501132&usg=AOvVaw1rRwEG7oKiPdxWRFAsFzTq) (Jupyter)
* [Quarto - Tutorial: Hello, Quarto](https://www.google.com/url?q=https://quarto.org/docs/get-started/hello/neovim.html&sa=D&source=editors&ust=1711378556501427&usg=AOvVaw0aHpNTtkkPpAWrvI4svgAw)
* [Project Jupyter | Get Involved](https://www.google.com/url?q=https://jupyter.org/community&sa=D&source=editors&ust=1711378556501702&usg=AOvVaw1EFwDrHK5wAWbshaAJcSDR)

# Miscellaneous

* [Make Docker container with all the interesting Jupyter kernels → try on](https://www.google.com/url?q=https://jupyter.org/binder&sa=D&source=editors&ust=1711378556502148&usg=AOvVaw3q-bWaCG8zYJiNSbQl42sj)
* [I don't like notebooks.- Joel Grus (Allen Institute for Artificial Intelligence)](https://www.google.com/url?q=https://youtu.be/7jiPeIFXb6U&sa=D&source=editors&ust=1711378556502459&usg=AOvVaw1SH4n_Id93LGPsGXS90h7u)
* [The Zen of vim VS. Jupyter Notebook](https://www.google.com/url?q=https://youtu.be/c2XFq0k3evA&sa=D&source=editors&ust=1711378556502783&usg=AOvVaw2mE_12osQ4X3kZdGetY6uu)
* [VIM for Data Science [2020]](https://www.google.com/url?q=https://youtu.be/gfa2_6OeOkk&sa=D&source=editors&ust=1711378556503092&usg=AOvVaw2e1ecT4Yhn53Wf7Vhug4Nv)
* [Jupyter Notebook Complete Beginner Guide 2023 - From Jupyter to Jupyterlab, Google Colab and Kaggle! Rob Mulla Rob Mulla • • 39.332 visualizaciones hace 11 meses](https://www.google.com/url?q=https://www.youtube.com/watch?v%3D5pf0_bpNbkw&sa=D&source=editors&ust=1711378556503422&usg=AOvVaw1wj7RX1S_bqpLaC1WbGOrB)
* [Niche Vim/Neovim Plugins. Overview | by alpha2phi | Medium](https://www.google.com/url?q=https://alpha2phi.medium.com/niche-neovim-plugins-722b34f76291&sa=D&source=editors&ust=1711378556503751&usg=AOvVaw0agTGe_81cJmt1cctbdkb_)
* ☐ Jupyter & Notebook-Related [...](https://www.google.com/url?q=https://github.com/justmarkham/scikit-learn-videos&sa=D&source=editors&ust=1711378556504117&usg=AOvVaw1Dj15mms2swMcMKl-bgHdo)[justmarkham/scikit-learn-videos: Jupyter notebooks from the scikit-learn video series](https://www.google.com/url?q=https://github.com/justmarkham/scikit-learn-videos&sa=D&source=editors&ust=1711378556504319&usg=AOvVaw2F8DdSNoEmIxCcOyYiH13O)
* [...](https://www.google.com/url?q=https://www.youtube.com/watch?v%3DutNl9f3gqYQ&sa=D&source=editors&ust=1711378556504684&usg=AOvVaw1noh9YpaGwn_GD7IAsf7Ke)
* [...](https://www.google.com/url?q=https://github.com/jupyterlab/jupyterlab&sa=D&source=editors&ust=1711378556504851&usg=AOvVaw1Q97Bhd6NBhQG2p5sATMne)[jupyterlab/jupyterlab: JupyterLab computational environment.](https://www.google.com/url?q=https://github.com/jupyterlab/jupyterlab&sa=D&source=editors&ust=1711378556505034&usg=AOvVaw1q_rtwO_ECV5jnM2Z4xRW6)
* [...](https://www.google.com/url?q=https://www.youtube.com/watch?v%3DstYs_8quGUM&sa=D&source=editors&ust=1711378556505868&usg=AOvVaw1zQEYPkTz3C0FSCf0ooFxs)
* [...](https://www.google.com/url?q=https://www.youtube.com/watch?v%3DFi_Xd6h4ncw&sa=D&source=editors&ust=1711378556506240&usg=AOvVaw2PPVEFaRxfDOf_xVZZz8mG)
* [...](https://www.google.com/url?q=https://www.youtube.com/watch?v%3DDAXQCJAHiAI&sa=D&source=editors&ust=1711378556506601&usg=AOvVaw1X0UYrErp8q9rXCRwCcg_I)
* [...](https://www.google.com/url?q=https://www.youtube.com/watch?v%3DDnkxaEgen0E&sa=D&source=editors&ust=1711378556507136&usg=AOvVaw0NdWeZrwGCzvgAZUiBXxsW)
* [...](https://www.google.com/url?q=https://github.com/voila-gallery&sa=D&source=editors&ust=1711378556507331&usg=AOvVaw1DoVoLJpx4hINxA2Mrhqk7)[Voilà Gallery](https://www.google.com/url?q=https://github.com/voila-gallery&sa=D&source=editors&ust=1711378556507525&usg=AOvVaw0lEEJZI82ma4LnRVsKsYYm)
* [...](https://www.google.com/url?q=https://youtu.be/l7zS8Ld4_iA&sa=D&source=editors&ust=1711378556507703&usg=AOvVaw2RCzTBanHzLT59r1FICHmL)[nbdev tutorial](https://www.google.com/url?q=https://youtu.be/l7zS8Ld4_iA&sa=D&source=editors&ust=1711378556507889&usg=AOvVaw2Szc9TOcLCVN4HsawLl3d9)
* [...](https://www.google.com/url?q=https://youtu.be/l7zS8Ld4_iA&sa=D&source=editors&ust=1711378556508051&usg=AOvVaw1SS8TSCja2gkifpHhYJyRp)[nbdev tutorial -- zero to published project in 90 minutes](https://www.google.com/url?q=https://youtu.be/l7zS8Ld4_iA&sa=D&source=editors&ust=1711378556508236&usg=AOvVaw1i2PaFOZGzw_K8KutPSHJZ)
* [...](https://www.google.com/url?q=https://quarto.org/docs/get-started/&sa=D&source=editors&ust=1711378556508415&usg=AOvVaw2dlKu6BG0a6_BKPjjEijT5)[quarto.org/docs/get-started/](https://www.google.com/url?q=https://quarto.org/docs/get-started/&sa=D&source=editors&ust=1711378556508593&usg=AOvVaw1R2vbCfSllMvZRhI-m5trd)- [ ]  ‣ - [...](https://www.google.com/url?q=https://nbcommands.readthedocs.io/en/latest/&sa=D&source=editors&ust=1711378556508969&usg=AOvVaw0a78GIcs55ByjHwtwKF4xz)[nbcommands.readthedocs.io/en/latest/](https://www.google.com/url?q=https://nbcommands.readthedocs.io/en/latest/&sa=D&source=editors&ust=1711378556509132&usg=AOvVaw1S9L1h4zENYRxxF6BdcFhp)

## SORT

* [paw-lu/nbpreview](https://github.com/paw-lu/nbpreview)