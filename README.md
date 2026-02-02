# Homebrew Tap for Git Worktree Tools

This is the official Homebrew tap for [git-worktree-tools](https://github.com/FS-Main/git-worktree-tools).

## What is Git Worktree Tools?

Enhanced git worktree management with Claude Code integration. Provides convenient commands to create, remove, and manage git worktrees with automatic Claude Code configuration synchronization.

## Installation

```bash
brew tap FS-Main/git-worktree-tools
brew install git-worktree-tools
```

## Setup

After installation, add this line to your `~/.zshrc` or `~/.bashrc`:

```bash
source $(brew --prefix)/opt/git-worktree-tools/worktree-helper.sh
```

Then restart your shell or run:
```bash
source ~/.zshrc  # or source ~/.bashrc
```

## Usage

Once installed and configured, you'll have access to these commands:

- `gwa <branch>` - Create a worktree for the specified branch
- `gwr [branch]` - Remove a worktree (defaults to current directory)
- `gwl` - List all worktrees
- `gwh` - Show detailed help

## Example

```bash
# Create a worktree for feature branch
gwa feature/new-login

# Work in the new worktree
cd ../project-feature-new-login

# When done, remove the worktree
gwr

# Or remove a specific worktree by branch name
gwr feature/new-login
```

## Updating

```bash
brew update
brew upgrade git-worktree-tools
```

## Documentation

For full documentation, see the main repository: https://github.com/FS-Main/git-worktree-tools

## Issues

If you encounter any issues, please report them at: https://github.com/FS-Main/git-worktree-tools/issues

## License

MIT License - see the main repository for details.
