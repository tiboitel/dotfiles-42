# Dotfiles-42

Welcome to the **Dotfiles-42** repository! This project contains a fully portable and optimized configuration for enhancing your productivity while programming in C and other workflows. Built for environments with no `root` or `sudo` access, these configurations are lightweight, portable, and easy to replicate for students or developers.

## Features

### Configured Tools
- **Vim**: Pre-configured `.vimrc` with optimized settings for C development, including:
  - Syntax highlighting.
  - Indentation and formatting settings.
  - Efficient navigation with mappings.
- **Zsh**: Fully optimized `.zshrc` with:
  - Custom aliases for commonly used commands.
  - Enhanced prompt customization for context visibility.
  - Autocompletion and history optimizations.
- **Git**: Pre-configured `.gitconfig` with fast workflow alias and better log views
  - Aliases for common used commands.
  - Advanced logging views with `lg`, `hist` or `show-graph`
  - Advanced diff and merge tools. Use `vimdiff` or Delta for rich side-by-side
    diffs. 
  - QoL improvements, enable rerere for auto-resolve previously encountered
    merge conflicts.
    Cached credentials with `credential.helper=store`.
  - Cross-platform compatibility wtih `core.autocrlf` for lide ending
    normalization.
  - Improved Large Repository handling with increased HTTP buffer. 
  - Delta integration, if the delta diff tool is install, the config makes diffs
    and logs even more readable.
  - Colors highlighting.



### Additional Tools and Integrations
- **Git-Friendly Workflow**: Aliases and enhancements for faster Git commands.
- **Portable and Lightweight**: Requires no system-wide installation or elevated privileges.

---

## Getting Started

### Installation

Clone this repository to your home directory, then modify gitconfig file with
your name and main and finally run the setup script:

```bash
cd ~
git clone https://github.com/tiboitel/dotfiles-42.git .dotfiles
cd .dotfiles
vim git/gitconfig # Change name, mail and email with your login and student mail.
./uninstall.sh && ./install.sh # Clean your old configuration and install the new one.
```

### Uninstallation

To remove the setup, simply run:

```bash
./uninstall.sh
```

---

## Key Aliases and Mappings

Here are some of the key optimizations included:

### Zsh Aliases
- `ll` → `ls -lh`
- `..` → `cd ..`
- `st` → `git status`
- `gc` → `git commit`

---

## Folder Structure

```
dotfiles-42/
├── /vim/vimrc         # Vim configuration
├── /zsh/zshrc         # Zsh configuration
├── /git/gitconfig     # Git configuration
├── install.sh         # Installation script
├── uninstall.sh       # Uninstallation script
```

---

## Your Color-theme is awfull

Yeah, it's true, I'm clearly not a designer. If you do better and I have no doubt that you will, don't hesitate to create a pull request and I will add your theme to the list.

## Contribution

Contributions are welcome! Feel free to fork this repository, make changes, and submit a pull request. If you encounter any issues, please open an issue [here](https://github.com/tiboitel/dotfiles-42/issues).

---

## License

This project is open-source and available under the GPL-3.0 License. Feel free to use, modify, and distribute as needed.

---
