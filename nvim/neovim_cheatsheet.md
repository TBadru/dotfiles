# Neovim Cheat Sheet

## Plugins and Keybindings

### 1. LSP (nvim-lspconfig + Mason + fidget + cmp)
**Plugin:** `neovim/nvim-lspconfig`

#### Keybindings
| Keys | Action |
|------|--------|
| `gd` | Go to Definition (Telescope) |
| `gD` | Go to Declaration |
| `gr` | Go to References (Telescope) |
| `gI` | Go to Implementation (Telescope) |
| `<leader>D` | Go to Type Definition (Telescope) |
| `<leader>ds` | Document Symbols (Telescope) |
| `<leader>ws` | Workspace Symbols (Telescope) |
| `<leader>rn` | Rename |
| `<leader>ca` | Code Action |
| `<leader>th` | Toggle Inlay Hints |

#### LSP Servers Configured
`ts_ls, ruff, pylsp, html, cssls, tailwindcss, dockerls, sqlls, terraformls, jsonls, yamlls, lua_ls`

---

### 2. Lualine (Statusline)
**Plugin:** `nvim-lualine/lualine.nvim`

#### Sections
- **A:** Mode (with Mac symbol ``)
- **B:** Branch
- **C:** Filename
- **X:** Diagnostics & Diff & Encoding & Filetype
- **Y:** Location
- **Z:** Progress

#### Key Features
- Theme: `nord`
- Section separators: `` | ``
- Component separators: ``
- Disabled filetypes: `alpha`, `neo-tree`

---

### 3. Miscellaneous Plugins
**Plugins:**
- `christoomey/vim-tmux-navigator` (Tmux navigation)
- `tpope/vim-sleuth` (Auto-detect tabstop/shiftwidth)
- `tpope/vim-fugitive` (Git integration)
- `tpope/vim-rhubarb` (GitHub integration)
- `folke/which-key.nvim` (Keybinding hints)
- `windwp/nvim-autopairs` (Auto-close brackets)
- `folke/todo-comments.nvim` (Highlight TODOs)
- `norcalli/nvim-colorizer.lua` (Color highlighter)

---

### 4. Neo-tree (File Explorer)
**Plugin:** `nvim-neo-tree/neo-tree.nvim`

#### Keybindings
| Keys | Action |
|------|--------|
| `\` | Reveal current file |
| `<leader>e` | Toggle Neo-tree |
| `<leader>ngs` | Git status float |
| `<bs>` | Navigate Up |
| `.` | Set root |
| `o` | Help |
| `P` | Toggle Preview |
| `l` | Open |
| `s` | Open Vertical Split |
| `S` | Open Horizontal Split |
| `t` | Open in Tab |
| `d` | Delete |
| `r` | Rename |
| `y` | Copy to Clipboard |
| `x` | Cut to Clipboard |
| `p` | Paste from Clipboard |
| `c` | Copy |
| `m` | Move |
| `q` | Close Window |
| `R` | Refresh |
| `?` | Help |
| `<` | Previous Source |
| `>` | Next Source |
| `i` | File Details |

---

### 5. Bufferline (Tabline)
**Plugin:** `akinsho/bufferline.nvim`

#### Keybindings
- `Bdelete! %d` - Close buffer
- Icons: Selected: bold, unselected: normal
- Separator: `│`
- Max name length: 30
- Sorting: insert_at_end

---

### 6. Telescope (Fuzzy Finder)
**Plugin:** `nvim-telescope/telescope.nvim`

#### Keybindings
| Keys | Action |
|------|--------|
| `<leader>sh` | Search Help Tags |
| `<leader>sk` | Search Keymaps |
| `<leader>sf` | Find Files |
| `<leader>ss` | Telescope Builtin Selector |
| `<leader>sw` | Grep String (current word) |
| `<leader>sg` | Live Grep |
| `<leader>sd` | Diagnostics |
| `<leader>sr` | Resume last search |
| `<leader>s.` | Recent Files |
| `<leader><leader>` | Buffers |
| `<leader>/` | Fuzzy search in current buffer |
| `<leader>s/` | Live Grep in open files |

---

### 7. Treesitter (Syntax Highlighting & Parsing)
**Plugin:** `nvim-treesitter/nvim-treesitter`

#### Configurations
- Languages: lua, python, javascript, typescript, vimdoc, vim, regex, terraform, sql, dockerfile, toml, json, java, groovy, go, gitignore, graphql, yaml, make, cmake, markdown, markdown_inline, bash, tsx, css, html
- Highlighting: enabled
- Auto-install missing languages: true
- Indent: enabled, except ruby
- Additional Vim regex for Ruby

