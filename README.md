# AstroNvim Template

**NOTE:** This is for AstroNvim v5+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

Features
Default Plugins:

    Astovim: A modern, minimalistic setup for web development in Neovim.

    Tree-sitter: Syntax highlighting for various web languages.

    LSP (Language Server Protocol): Provides language-specific features such as autocompletion, linting, and diagnostics.

    Telescope: A powerful search and fuzzy finder tool for files, text, etc.

    Neo-tree: A file explorer for browsing and managing files in your project.

    Prettier: Automatic code formatting for various file types.

Key Custom Features:

    HTML Snippets for .tsx Files: Added snippets to streamline your development process when working with React and JSX in .tsx files.

    Show .env Files in Neo-tree: By default, .env files are hidden from the file explorer. This setup makes them visible so you can easily access environment variables.

    Auto-Save: Automatically saves your files to prevent data loss and maintain workflow consistency.

    Auto-Format with Prettier: Prettier is set up to automatically format your HTML code every time you save the file, ensuring consistent and clean code.
