 
# 🚀 Psychic System - Neovim Configuration

A modern, feature-rich Neovim configuration optimized for JavaScript and Python development. Built with Lua and designed for productivity and aesthetic appeal.

## ✨ Features

### 🎨 Beautiful Interface
- **Alpha Dashboard**: Custom ASCII art welcome screen with quick actions
- **Catppuccin Theme**: Modern, eye-friendly color scheme
- **Lualine**: Elegant status line with file information and git integration
- **Neo-tree**: File explorer with tree view and file operations

### 🔧 Development Tools
- **LSP Integration**: Full Language Server Protocol support
  - Lua LSP (`lua_ls`)
  - TypeScript/JavaScript (`ts_ls`)
  - HTML (`html`)
  - CSS (`cssls`)
- **Auto-completion**: Intelligent code completion with `nvim-cmp`
- **Code Formatting**: Automatic code formatting with `none-ls`
- **Syntax Highlighting**: Advanced syntax highlighting with Treesitter

### 🔍 Navigation & Search
- **Telescope**: Fuzzy finder for files, buffers, and more
- **Quick Actions**: Streamlined workflow with custom keybindings
- **File Management**: Integrated file operations through Neo-tree

### 📋 Smart Clipboard
- System clipboard integration for seamless copy/paste operations
- Cross-platform clipboard support

## 📁 Project Structure

```
psychic-system/
├── init.lua                # Main configuration entry point
├── lazy-lock.json          # Plugin version lockfile
├── lua/
│   ├── vim-options.lua     # Vim options and settings
│   └── plugins/            # Plugin configurations
│       ├── alpha-nvim.lua      # Dashboard configuration
│       ├── catppuccin.lua      # Color scheme
│       ├── lsp-config.lua      # LSP setup
│       ├── lualine.lua         # Status line
│       ├── neo-tree.lua        # File explorer
│       ├── none-ls.lua         # Code formatting
│       ├── nvim-cmp.lua        # Auto-completion
│       ├── onedarkpro.lua      # Alternative theme
│       ├── telescope.lua       # Fuzzy finder
│       └── treesitter.lua      # Syntax highlighting
└── .luarc.json             # Lua language server configuration
```
## 🚀 Installation

### Prerequisites
- **Neovim >= 0.8.0**
- **Git**
- **Node.js** (for JavaScript/TypeScript LSP)
- **Python** (for Python development)
- A **Nerd Font** (recommended: JetBrains Mono Nerd Font)

### Quick Setup

#### Step-by-Step Installation

1. **Backup existing configuration** (if any):

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

2. **Clone this repository**:

```bash
git clone https://github.com/vsharma2430/psychic-system.git ~/.config/nvim
```

3. **Launch Neovim**:

```bash
nvim
```
4. **Wait for plugins to install**:
The configuration uses `lazy.nvim` for plugin management. Plugins will be automatically installed on first launch.

5. **Install Language Servers**:
Open Neovim and run:

```vim
:MasonInstallAll
```

That's it! Your Neovim configuration should now be ready for JavaScript and Python development.

## 🎯 Key Bindings

### General
- `<Space>` - Leader key
- `jk` - Exit insert mode (if configured)

### LSP
- `K` - Show hover information
- `gd` - Go to definition
- `<leader>ca` - Code actions

### File Navigation
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Browse buffers
- `<leader>fh` - Help tags

### Dashboard Actions
- `e` - New file
- `f` - Find file
- `r` - Recent files
- `s` - Settings
- `q` - Quit

## 🔧 Configuration

### Language Servers
The configuration automatically installs and configures:
- **Lua**: `lua_ls` with Neovim API support
- **JavaScript/TypeScript**: `ts_ls` with enhanced features
- **HTML**: `html` for web development
- **CSS**: `cssls` for styling

### Customization
- **Theme**: Edit `lua/plugins/catppuccin.lua` to customize colors
- **Keybindings**: Modify `init.lua` or individual plugin files
- **LSP Settings**: Customize in `lua/plugins/lsp-config.lua`
- **Dashboard**: Personalize in `lua/plugins/alpha-nvim.lua`

## 📦 Plugin List

| Plugin | Purpose | Configuration |
|--------|---------|---------------|
| lazy.nvim | Plugin manager | Built-in |
| alpha-nvim | Dashboard | `alpha-nvim.lua` |
| catppuccin | Color scheme | `catppuccin.lua` |
| neo-tree.nvim | File explorer | `neo-tree.lua` |
| telescope.nvim | Fuzzy finder | `telescope.lua` |
| nvim-treesitter | Syntax highlighting | `treesitter.lua` |
| nvim-lspconfig | LSP configuration | `lsp-config.lua` |
| mason.nvim | LSP installer | `lsp-config.lua` |
| nvim-cmp | Auto-completion | `nvim-cmp.lua` |
| lualine.nvim | Status line | `lualine.lua` |
| none-ls.nvim | Code formatting | `none-ls.lua` |

## 🛠️ Development Workflow

This configuration is optimized for:

### JavaScript/TypeScript Development
- IntelliSense with `ts_ls`
- Auto-completion for React, Node.js
- Code formatting and linting
- Quick file navigation

### Python Development  
- Ready for Python LSP integration
- Syntax highlighting with Treesitter
- File management with Neo-tree
- Integrated terminal support

### General Features
- Git integration
- Project-wide search
- Multiple cursors support
- Buffer management

## 🤝 Contributing

Feel free to fork this repository and customize it to your needs! If you have improvements or suggestions:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📝 License

This configuration is open source and available under the MIT License.

## 🙏 Acknowledgments

- Built following the [TypeCraft Neovim series](https://www.youtube.com/c/TypeCraft)
- Inspired by the Neovim community
- Plugin authors and maintainers

---

**Happy Coding!** 🎉

*Made with ❤️ by [@vsharma2430](https://github.com/vsharma2430)*
