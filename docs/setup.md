# Setup Guide

## Prerequisites

- Windows
- Node.js and npm
- Git
- OmniRoute
- Claude Code
- A configured provider that offers legitimately available free model access

## Environment Setup

1. Install Node.js and npm.
2. Install Git.
3. Install OmniRoute globally.
4. Complete the OmniRoute setup and configure a supported provider with available free model access.
5. Configure Claude Code to use the OmniRoute local gateway.
6. Verify the active Claude Code profile with /status.

## Expected Configuration

The Claude Code environment should use the local OmniRoute endpoint:

http://localhost:20128

The current verified model profile documented by this project is:

agy/claude-sonnet-4-6

## Windows Startup

The repository includes a startup launcher and a PowerShell setup script. The routing layer is designed so the provider and model can be changed without rebuilding the Claude Code workflow.

Run the setup script from the repository root:

.\scripts\setup-startup.ps1

This copies the launcher into the current user's Windows Startup folder.

## Verification

After setup, verify that OmniRoute is healthy:

curl.exe -s http://localhost:20128/api/monitoring/health

Then start Claude Code and run:

/status

The status information should show the local OmniRoute base URL and the configured provider/model profile.

## Security

Do not commit API keys, authentication tokens, .env files, local databases, or personal Claude configuration to this repository.

Review .gitignore before pushing the repository to GitHub.

Free model availability and quotas are controlled by the respective providers and may change over time.

