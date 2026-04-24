# Homebrew Tap for worktigre

This is the official Homebrew tap for [worktigre](https://github.com/AThevon/worktigre), a git worktree manager.

## Installation

```bash
brew tap AThevon/worktigre
brew install worktigre
```

The old name `wt` still works as an alias:

```bash
brew install AThevon/worktigre/wt
```

## Post-installation

Add to your `.zshrc`:

```bash
eval "$(wt-core --shell-init)"
```

## Update

```bash
brew update
brew upgrade worktigre
```
