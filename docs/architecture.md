# Architecture

## System Flow

Windows Login -> Startup Launcher -> OmniRoute -> Antigravity Provider -> Claude Sonnet 4.6 -> Claude Code

## Components

### Windows Startup
Windows launches the startup script after user login.

### Startup Launcher
The launcher checks the OmniRoute health endpoint before starting Claude Code.

### OmniRoute
OmniRoute acts as the local AI gateway between Claude Code and the configured provider.

### Antigravity Provider
OmniRoute routes Claude Code requests through the configured Antigravity provider connection.

### Claude Sonnet 4.6
The active Claude Code profile uses: agy/claude-sonnet-4-6

### Claude Code
Claude Code remains the development interface while OmniRoute handles the routing layer.

## Request Path

Claude Code -> OmniRoute -> Antigravity Provider -> Claude Sonnet 4.6

## Readiness Check

The startup launcher polls http://localhost:20128/api/monitoring/health and waits until OmniRoute reports a healthy status before launching Claude Code.

## Design Goals

- Keep Claude Code configuration separate from provider routing.
- Start the local gateway automatically after Windows login.
- Avoid starting Claude Code before OmniRoute is ready.
- Keep credentials and runtime data outside version control.
- Make the environment understandable and reproducible for another developer.
