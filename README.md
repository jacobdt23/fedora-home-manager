# Fedora Home Manager Configuration

Declarative user environment configuration for Fedora Linux managed via Nix Flakes and Home Manager.

## Features

- **Flake-based**: Pinned dependencies tracking `nixpkgs-unstable`.
- **User Environment**: Declaratively configures packages, fastfetch, htop, and Git.
- **Standalone Home Manager**: Designed to run on non-NixOS distributions (Fedora).

## Usage

To apply configuration:

```bash
home-manager switch --flake .#jacob
```
