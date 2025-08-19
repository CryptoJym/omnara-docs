# 🚀 Omnara Quick Start Cheat Sheet

## Installation (One-Time Setup)
```bash
# Install Omnara
pip install omnara

# Or faster with uv:
uv tool install omnara

# Authenticate (opens browser)
omnara --auth
```

## Basic Commands

### 1. Monitor Existing Claude Code Session
```bash
omnara
```
*Use when Claude Code is already running*

### 2. Start Remote-Controlled Session
```bash
omnara serve
```
*Access from phone/web browser*

### 3. Start with Specific Agent
```bash
# For Claude Code (default)
omnara --agent=claude

# For Amp
omnara --agent=amp
```

### 4. Headless Mode (Web Dashboard Control)
```bash
# Basic headless
omnara headless

# With initial prompt
omnara headless --prompt "Build a React dashboard"

# With specific permissions
omnara headless --permission-mode acceptEdits --allowed-tools Read,Write,Bash
```

## Advanced Usage

### Local Development (No Internet Tunnel)
```bash
omnara serve --no-tunnel
omnara serve --no-tunnel --port 8080
```

### MCP Server Mode
```bash
# Basic MCP server
omnara mcp

# With git diff tracking
omnara mcp --git-diff
```

### Direct Wrapper (Advanced)
```bash
python -m integrations.cli_wrappers.claude_code.claude_wrapper_v3 --api-key YOUR_API_KEY
```

## Mobile App Workflow

1. **Install Omnara on desktop**: `pip install omnara`
2. **Start remote session**: `omnara serve`
3. **Copy the URL** shown (like `https://omnara.com/session/abc123`)
4. **Open URL on phone** or Omnara mobile app
5. **Control Claude** from anywhere!

## Common Scenarios

### "I want to check on Claude while getting coffee"
```bash
omnara serve
# Open the URL on your phone
```

### "I want to see what Claude is doing right now"
```bash
omnara
# Opens dashboard for current session
```

### "I want to start a coding task before bed"
```bash
omnara headless --prompt "Refactor the authentication system"
# Check progress in the morning via web dashboard
```

### "I want multiple AI agents working in parallel"
```bash
# Terminal 1
omnara serve --port 8001

# Terminal 2  
omnara serve --port 8002

# Manage both from omnara.com dashboard
```

## Troubleshooting

### Installation Issues
```bash
# Try with pip3
pip3 install omnara

# Or with --user flag
pip install --user omnara

# Or use pipx (recommended)
pipx install omnara
```

### Can't Connect to Session
- Check firewall settings
- Ensure terminal stays open
- Try `--no-tunnel` for local network only

### Authentication Problems
```bash
# Re-authenticate
omnara --reauth

# Check stored credentials
omnara --version
```

## Pro Tips

1. **Enable Mobile Notifications**: Get alerts only for important decisions
2. **Use Git Diff Flag**: Track code changes in real-time with `--git-diff`
3. **Bookmark Your Session URL**: Quick access from any device
4. **Set Permission Modes**: 
   - `default` - Standard permissions
   - `acceptEdits` - Auto-accept file edits
   - `plan` - Planning mode only
   - `bypassPermissions` - Skip all prompts (use carefully!)

## Pricing
- **Free**: 10 sessions/month
- **Pro**: $9/month unlimited
- **Enterprise**: Custom pricing

## Resources
- 🌐 Dashboard: [omnara.com](https://omnara.com)
- 📱 iOS App: Search "Omnara" in App Store
- 💻 GitHub: [github.com/omnara-ai/omnara](https://github.com/omnara-ai/omnara)
- 📧 Support: support@omnara.com

---
*Transform your AI from a silent worker into a collaborative teammate!*