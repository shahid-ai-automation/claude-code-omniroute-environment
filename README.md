# Claude Code + OmniRoute Environment

A Windows-based development environment that routes Claude Code through OmniRoute and an Antigravity provider to Claude Sonnet 4.6, with automatic startup after Windows login.

## Architecture

Windows Login
-> Startup Launcher
-> OmniRoute
-> Antigravity Provider
-> Claude Sonnet 4.6
-> Claude Code

## What This Project Demonstrates

- Claude Code integration with a local AI gateway
- Model routing through OmniRoute
- Antigravity provider configuration
- Claude Sonnet 4.6 as the active development model
- Windows startup automation
- Health-check based service readiness
- Reproducible local development setup
- Separation of project files from local credentials and runtime data

## Environment

- Windows
- Node.js
- npm
- OmniRoute
- Claude Code
- Antigravity provider
- Claude Sonnet 4.6

## Verification

The environment can be verified from Claude Code using /status.

Expected routing path:

Claude Code -> OmniRoute (localhost:20128) -> Antigravity -> Claude Sonnet 4.6

## Security

Credentials, authentication tokens, environment files, local databases, and Claude local configuration are intentionally excluded from version control.

Review .gitignore before committing or publishing changes.

## Project Structure

- README.md — project overview and architecture
- .gitignore — prevents local secrets and runtime data from being committed
- scripts/ — Windows startup and automation scripts
- docs/ — architecture and setup documentation

## Status

This repository documents a working local Claude Code development environment with OmniRoute routing, Antigravity provider integration, Claude Sonnet 4.6, and Windows startup automation.
