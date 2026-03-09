# Troubleshooting

## 1. "uvx is not recognized" / Kiro can't find uvx

Kiro doesn't always see the same PATH as your terminal.

**Fix (Windows):** Find the full path to uvx:
```powershell
Get-Command uvx | Select-Object -ExpandProperty Source
```
Open `.kiro/settings/mcp.json` and replace `"uvx"` with the full path, using double backslashes:
```json
"command": "C:\\Users\\yourname\\.local\\bin\\uvx.exe",
```

**Fix (macOS/Linux):** Usually not needed, but if it happens:
```bash
which uvx
```
Use the output as the full path in `mcp.json`.

## 2. Jira MCP server won't connect / "Connection closed"

Common causes:
- **VPN not active** — the Jira server requires VPN access
- **`.env` file missing or empty** — make sure you copied `.env.example` to `.env` and filled in both values
- **`mcp.json` not created** — make sure you copied `mcp.json.example` to `mcp.json`
- **Token expired** — PATs are set to 1-day expiry. Create a new one if needed
- **`.env` path not found** — the MCP server looks for `.env` relative to where Kiro runs. If it can't find it, try using the full path in `mcp.json`: replace `".env"` with the absolute path to your `.env` file

After fixing, reconnect the MCP server: open the MCP panel in Kiro and click the reconnect icon.

## 3. "Running scripts is disabled on this system" (Windows)

PowerShell blocks unsigned scripts by default.

**Fix:** Run this once in PowerShell:
```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```

Then try the setup script again.

## 4. PM Skills not loading / "No PM skills available"

- Make sure you ran the setup script (`setup-skills.ps1` or `setup-skills.sh`)
- Check that `.kiro/skills/` contains folders (not empty)
- Try closing and reopening the project in Kiro

**Quick check:** Ask Kiro: *"List the files in .kiro/skills/"*

## 5. AI output is too generic / not using my product context

- Open `context/my-product.md` — is it still mostly empty or full of `<!-- comments -->`?
- The AI needs real content, not just section headers. Fill in specifics.
- Try telling the AI: *"Read context/my-product.md and summarize what you know about my product"* — if it can't summarize much, your context needs more detail.
