# Claude Code + OmniRoute Environment

A Windows-based development environment for running Claude Code through legitimately available free model access from supported providers, using OmniRoute as the local routing layer. The goal is to make Claude Code usable with available free model capacity without requiring a direct paid model API connection.

## Architecture

Windows Login
-> Startup Launcher
-> Claude Code
-> OmniRoute
-> Provider
-> Available Free Model

## What This Project Demonstrates

- Claude Code integration with a local AI gateway
- Access to available free models from supported providers
- Model routing through OmniRoute
- Antigravity provider configuration
- Provider/model abstraction so the active free model can be changed without rebuilding the development workflow
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
- Verified model profile: agy/claude-sonnet-4-6

## Verification

The environment can be verified from Claude Code using /status.
The current verified configuration routes Claude Code through the Antigravity provider using the `agy/claude-sonnet-4-6` model profile. This project does not require a direct Anthropic API connection for the documented setup.

Expected routing path:

Claude Code -> OmniRoute (localhost:20128) -> Provider -> Available Free Model

Current verified example:

Claude Code -> OmniRoute -> Antigravity provider -> agy/claude-sonnet-4-6

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


