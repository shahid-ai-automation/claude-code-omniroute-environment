# Setup Guide

## Prerequisites

* Windows
* Node.js and npm
* Git
* OmniRoute
* Claude Code
* A configured provider with available model access

## Environment Setup

1. Install Node.js and npm.

2. Install Git.

3. Install OmniRoute globally:

   ```powershell
   npm install -g omniroute
   ```

4. Verify the OmniRoute installation:

   ```powershell
   omniroute --version
   ```

5. Start the OmniRoute local server:

   ```powershell
   omniroute serve
   ```

6. Verify that the local health endpoint responds:

   ```powershell
   curl.exe -s http://localhost:20128/api/monitoring/health
   ```

7. Complete OmniRoute setup and configure a supported provider with available model access.

8. Configure Claude Code to use the local OmniRoute gateway.

9. Verify the active Claude Code configuration with `/status`.

## Expected Configuration

Claude Code should connect to the local OmniRoute gateway at:

```text
http://localhost:20128
```

The currently verified model profile is:

```text
agy/claude-sonnet-4-6
```

The expected routing path is:

```text
Claude Code -> OmniRoute -> Antigravity provider -> agy/claude-sonnet-4-6
```

The provider and model can be changed later without rebuilding the overall Claude Code workflow.

## Windows Startup

The repository includes a PowerShell setup script and a startup launcher for automatically starting the documented Claude Code environment after Windows login.

From the repository root, run:

```powershell
.\scripts\setup-startup.ps1
```

This copies the startup launcher into the current user's Windows Startup folder.

The launcher waits for the OmniRoute health endpoint to become available before starting the configured Claude Code environment. This prevents Claude Code from starting before the local routing layer is ready.

## Verification

After completing the setup, verify that OmniRoute is running and reachable:

```powershell
curl.exe -s http://localhost:20128/api/monitoring/health
```

Then start Claude Code and run:

```text
/status
```

The status information should confirm that Claude Code is using the local OmniRoute gateway and the configured provider/model profile.

For the currently documented configuration, the expected routing path is:

```text
Claude Code -> OmniRoute -> Antigravity provider -> agy/claude-sonnet-4-6
```

## Security

Do not commit sensitive local configuration or credentials to the repository.

The following should remain outside version control:

* API keys and authentication tokens
* `.env` files
* OmniRoute local databases
* Claude Code local configuration
* Other provider-specific credentials or secrets

The repository includes a `.gitignore` file that excludes these local files and directories.

Before pushing changes to GitHub, review the files being committed and confirm that no credentials or private configuration are included.

## Availability and Limitations

Provider availability, model access, quotas, authentication requirements, and usage limits are controlled by the respective providers and may change over time.

The documented `agy/claude-sonnet-4-6` profile represents the configuration verified for this project at the time of documentation. It should not be assumed that the same provider, model, quota, or access method will remain available indefinitely.

If the configured model becomes unavailable, update the provider or model configuration while keeping the same overall Claude Code -> OmniRoute routing architecture.

