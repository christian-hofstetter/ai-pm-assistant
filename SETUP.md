# Pre-Workshop Setup

Complete these steps before the workshop. Budget 20–30 minutes.

## 1. Install Kiro IDE

Download and install [Kiro IDE](https://kiro.dev), then sign in.

## 2. Install Git (if you don't have it)

Check by opening a terminal and typing `git --version`. If it works, skip this step.

If not: download from [git-scm.com](https://git-scm.com/downloads) and install with default settings.

## 3. Clone this project and open it in Kiro

```
git clone https://github.com/christian-hofstetter/ai-pm-assistant.git
```

Open the `ai-pm-assistant` folder in Kiro IDE (File → Open Folder).

## 4. Install PM Skills

Open the Kiro chat and paste this prompt:

```
Clone the PM Skills repo from https://github.com/phuryn/pm-skills.git
into the parent folder (one level up from this project), then run the
appropriate setup script to copy all skills into .kiro/skills/.

Use setup-skills.ps1 on Windows or setup-skills.sh on macOS/Linux.
If PowerShell blocks the script, run: Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```

Kiro will handle the cloning and copying for you.

**Verify:** Ask Kiro: *"What PM skills do you have available?"*

<details>
<summary>Prefer to do it manually?</summary>

Open a terminal in the project folder:
```
cd ..
git clone https://github.com/phuryn/pm-skills.git
cd ai-pm-assistant
```

**Windows** (PowerShell — if scripts are blocked, first run `Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned`):
```powershell
.\setup-skills.ps1
```

**macOS / Linux:**
```bash
bash setup-skills.sh
```
</details>

## 5. Connect to Jira (optional but recommended)

This lets the AI read your real backlog during the workshop.
You need VPN access to your Jira instance.

> Skip this step if you don't use Jira or can't connect. All exercises work without it —
> just paste your backlog items into `context/my-product.md` before the workshop.

### Step 5a: Install uv (Python package runner)

The Jira MCP server needs `uvx` to run.

**Windows** (open PowerShell as Administrator):
```powershell
irm https://astral.sh/uv/install.ps1 | iex
```

**macOS / Linux** (open Terminal):
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

**Close and reopen your terminal**, then verify:
```
uvx --version
```

You do NOT need to install Python separately — `uv` handles that.

### Step 5b: Create config files

Paste this into Kiro chat:

```
Help me set up the Jira connection:
1. Copy .env.example to .env
2. Copy .kiro/settings/mcp.json.example to .kiro/settings/mcp.json
3. On Windows, find the full path to uvx.exe and update the "command" field
   in mcp.json with the full path (using double backslashes)
4. Then open .env so I can fill in my Jira URL and token
```

<details>
<summary>Prefer to do it manually?</summary>

**Windows:**
```powershell
Copy-Item .env.example .env
Copy-Item .kiro/settings/mcp.json.example .kiro/settings/mcp.json
```

**macOS/Linux:**
```bash
cp .env.example .env
cp .kiro/settings/mcp.json.example .kiro/settings/mcp.json
```

**Windows only** — find your uvx path and update mcp.json:
```powershell
Get-Command uvx | Select-Object -ExpandProperty Source
```
Open `.kiro/settings/mcp.json` and replace `"uvx"` with the full path using double backslashes (e.g. `C:\\Users\\you\\.local\\bin\\uvx.exe`).
</details>

### Step 5c: Get a Personal Access Token

1. Open your Jira instance in the browser
2. Go to **Profile → Personal Access Tokens**
3. Click **Create token**, name it `Workshop`, set expiry to 1 day
4. Copy the token immediately
5. Open the `.env` file and fill in your Jira URL and token

### Step 5d: Verify

Restart Kiro (or reconnect the MCP server from the MCP panel), then ask:

*"List my Jira projects"*

If it returns projects, you're connected.

**If it doesn't work**, check [TROUBLESHOOTING.md](TROUBLESHOOTING.md).

## You're ready!

On workshop day, start with exercise 1: `exercises/01-setup-and-context.md`
