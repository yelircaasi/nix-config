# juventas.nvim

same as Jupyter web, but using text view

Components: class Converter()

.ipynb to textview nb2text(...)

textview to .ipynb text2nb(...)

class Buffer()

Converter.collect_textview_diffs()

Converter.collect_ipynb_diffs()

Converter.update_ipynb_from_textview()

Converter.update_textview_from_ipynb()

other concerns:

connect to server

syntax highlighting

LSP

completion

multi-language support

tests

image rendering (wezterm and kitty)

- > how to write a plugin in python and interact with lua

make each cell its own buffer? keep separate code-only buffer for LSP?

https://chat.openai.com/c/fcf2129c-4772-4537-b029-d1e1fa1f276b 

https://github.com/dccsillag/magma-nvim

https://github.com/luk400/vim-jukit

https://martibosch.github.io/jupyter-emacs-universe/ 

https://github.com/emacs-jupyter/jupyter

https://github.com/millejoh/emacs-ipython-notebook

https://millejoh.github.io/emacs-ipython-notebook/

https://isaacganoung.com/articles/tutorials/jupyter-notebook-in-emacs.html

## Virtual Text
Yes, you can add virtual text to the beginning of each line in Neovim using a plugin or by directly configuring Neovim. Here's a way to achieve this:

You can use the **`nvim_buf_set_virtual_text()`** function provided by Neovim's API to add virtual text to each line. You can invoke this function through a script or by using Neovim's built-in functions.

Here's an example script in Lua that adds virtual text to the beginning of each line:

```lua
-- Define a function to add virtual text to the beginning of each line
function add_virtual_text(bufnr)local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
    for i, line in ipairs(lines) do
        -- Add virtual text "| " to the beginning of each line
        vim.api.nvim_buf_set_virtual_text(bufnr, -1, i - 1, {{'| ', 'Comment'}}, {})
    end
end

-- Call the function on each buffer
for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    add_virtual_text(bufnr)
end
```

To achieve notebook-style cells with virtual text in Neovim, you can use the `nvim_buf_set_virtual_text()` function to add custom virtual text to specific lines in your buffer. Additionally, you can utilize ASCII art to create the visual boundaries for the cells.

Here's a Lua script that adds notebook-style cells around each line of Python code:

```lua
function add_notebook_cells(bufnr)
    local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
    for i, line in ipairs(lines) do
        -- Add notebook-style cells around each line
        local notebook_line = '│  ' .. line .. '  │'
        local notebook_border = '┌' .. string.rep('─', #notebook_line - 2) .. '┐'

        -- Set virtual text for the notebook cell
        vim.api.nvim_buf_set_virtual_text(bufnr, -1, i - 1, {{notebook_border, 'Comment'}, {notebook_line, 'Comment'}, {notebook_border, 'Comment'}}, {})
    end
end

-- Call the function on each buffer
for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    add_notebook_cells(bufnr)
end
```

This Lua script iterates over each line of the buffer, adding notebook-style cells around the line content. It then uses `nvim_buf_set_virtual_text()` to add the custom virtual text to the buffer.

To execute this script, save it as `add_notebook_cells.lua` in your Neovim configuration directory and then invoke it from your Neovim configuration file (`init.lua`) using `:luafile add_notebook_cells.lua`. This will add the notebook-style cells to all buffers currently open in Neovim.

Please note that virtual text added using this method is purely visual and does not affect the underlying contents of the file. Additionally, you may need to adjust the ASCII art and styling to fit your preferences and display needs.

## filetype-specific keybinds

Yes, you can define key bindings that are specific to a certain file type (filetype) in Neovim. This is useful for defining mappings or commands that are relevant only when editing files of a particular type, such as Python, Markdown, or JavaScript.

Here's how you can define filetype-specific key bindings in Neovim:

```vim
" Define a key binding that is valid only for Python files
autocmd FileType python nnoremap <buffer> <Leader>t :!pytest %<CR>

" Define a key binding that is valid only for Markdown files
autocmd FileType markdown nnoremap <buffer> <Leader>c :!pandoc -s -o %:r.pdf %<CR>
```

In these examples:

- **`autocmd FileType python`** and **`autocmd FileType markdown`** set up autocmds (autocommands) that trigger when Neovim detects a buffer with the corresponding file type.
- **`nnoremap <buffer> <Leader>t :!pytest %<CR>`** defines a normal mode mapping (**`nnoremap`**) that executes the **`pytest`** command when triggered by the leader key followed by **`t`** (**`<Leader>t`**). The **`%`** represents the current file's path, and **`<CR>`** simulates pressing the Enter key.
- **`nnoremap <buffer> <Leader>c :!pandoc -s -o %:r.pdf %<CR>`** defines another normal mode mapping that runs the **`pandoc`** command to convert the Markdown file to PDF when triggered by the leader key followed by **`c`**.

By using **`<buffer>`** in the mapping command, you ensure that the mapping is local to the current buffer. This means that the mapping will only be active when editing a file of the specified filetype, and it won't affect other buffers.

You can add these mappings to your **`init.vim`** or **`init.lua`** configuration file in Neovim to define filetype-specific key bindings according to your preferences.

## Question for ChatGPT

What would be the most difficult parts of developing a neovim plugin providing a neovim-native interface to Jupyer notebook (.ipynb) files?

Developing a Neovim plugin to provide a Neovim-native interface to Jupyter notebook (.ipynb) files could present several challenges, including:

1. **Parsing and Understanding the .ipynb Format**: Jupyter notebook files are JSON-based and have a complex structure. Developing a robust parser to handle this format and extract relevant information such as code cells, markdown cells, outputs, metadata, etc., can be challenging.
2. **Rendering and Displaying Rich Content**: Jupyter notebooks support rich content such as Markdown, HTML, images, LaTeX, and interactive widgets. Implementing a rendering engine within Neovim to display this rich content accurately and interactively could be non-trivial.
3. **Code Execution and Kernel Interaction**: Jupyter notebooks rely on kernels to execute code. Providing a seamless interface for code execution, kernel management, and interaction with kernel outputs within Neovim would require integration with Jupyter's messaging protocol (e.g., Jupyter messaging over ZeroMQ or WebSockets).
4. **User Interface and Interactivity**: Jupyter notebooks offer features like collapsible sections, cell execution status indicators, interactive widgets, and cell metadata. Replicating these features within Neovim while maintaining a consistent and intuitive user interface could be challenging.
5. **Maintaining Compatibility and Performance**: Neovim runs in a terminal environment, which may impose limitations on rendering capabilities and interactivity compared to web-based Jupyter interfaces. Ensuring compatibility with different terminal emulators and maintaining acceptable performance levels for large notebooks could be challenging.
6. **Handling Notebook Structure and Modifications**: Jupyter notebooks can have a hierarchical structure with nested cells and metadata. Implementing functionality to create, modify, rearrange, and delete cells while preserving the integrity of the notebook structure would require careful design and implementation.
7. **Testing and Documentation**: Comprehensive testing, including unit tests, integration tests, and user acceptance tests, would be essential to ensure the plugin's reliability and robustness. Additionally, providing clear and comprehensive documentation to guide users on installation, configuration, and usage would be crucial.

Overall, while developing a Neovim plugin to interface with Jupyter notebook files could be challenging, it could also be a rewarding project that enhances the productivity and workflow of Neovim users who work with Jupyter notebooks.
