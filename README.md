# Homebrew Tap for wt

This is the official Homebrew tap for [wt](https://github.com/AThevon/wt), a git worktree manager.

## Installation

```bash
brew tap AThevon/wt
brew install wt
```

## Post-installation

Add to your `.zshrc`:

```bash
eval "$(wt-core --shell-init)"
```

## Update

```bash
brew update
brew upgrade wt
```
