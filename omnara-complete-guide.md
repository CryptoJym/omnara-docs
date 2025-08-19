# 🎯 The Complete Omnara + Claude Code Max Integration Guide

## Table of Contents
1. [What is Omnara?](#what-is-omnara)
2. [Why Use Omnara with Claude Code Max?](#why-use-omnara)
3. [Installation Guide](#installation)
4. [Configuration Options](#configuration)
5. [Workflow Examples](#workflows)
6. [Integration with Other Tools](#integrations)
7. [Troubleshooting](#troubleshooting)
8. [Advanced Features](#advanced)

---

## What is Omnara? {#what-is-omnara}

Omnara is a **command center for AI agents** that transforms tools like Claude Code Max from silent workers into collaborative teammates. It provides:

- 📱 **Mobile Control**: Guide your AI from your phone
- 👀 **Real-time Monitoring**: See what your AI is doing live
- 🔔 **Smart Notifications**: Get alerts when AI needs input
- 🌐 **Web Dashboard**: Beautiful interface for managing sessions
- 🚀 **Remote Launch**: Start AI sessions from anywhere

### Built by AI Veterans
- Ex-engineers from Meta, Microsoft, and Amazon
- Y Combinator S25 company
- Designed specifically for AI pair programming

---

## Why Use Omnara with Claude Code Max? {#why-use-omnara}

### Traditional Claude Code Workflow
```
You → Terminal → Claude Code → Terminal → You
(Must stay at computer)
```

### With Omnara
```
You → Any Device → Omnara → Claude Code → Omnara → Any Device → You
(Work from anywhere)
```

### Key Benefits:
1. **Freedom of Movement**: Step away from your desk without stopping work
2. **Parallel Processing**: Run multiple Claude sessions simultaneously
3. **Async Development**: Start tasks and check back later
4. **Team Collaboration**: Share sessions with teammates
5. **Productivity Analytics**: Track AI usage and efficiency

---

## Installation Guide {#installation}

### Prerequisites
- Python 3.8+ (check with `python --version`)
- Claude Code installed
- Internet connection

### Quick Install (2 minutes)
```bash
# Option 1: Using pip
pip install omnara

# Option 2: Using pipx (recommended)
pipx install omnara

# Option 3: Using uv (fastest)
uv tool install omnara

# Authenticate (one-time)
omnara --auth
```

### Verify Installation
```bash
omnara --version
# Should show: omnara version 1.5.2 or higher
```

---

## Configuration Options {#configuration}

### 1. Basic Monitoring Mode
```bash
omnara
```
- Monitors existing Claude Code session
- Read-only dashboard access
- Perfect for tracking progress

### 2. Remote Control Mode
```bash
omnara serve
```
- Full control from phone/web
- Generates unique session URL
- Enables mobile notifications

### 3. Headless Mode
```bash
# Basic
omnara headless

# With prompt
omnara headless --prompt "Build a React dashboard"

# With permissions
omnara headless --permission-mode acceptEdits
```

### 4. Local Network Mode
```bash
omnara serve --no-tunnel --port 8080
```
- No internet exposure
- Access via local IP
- Ideal for security-conscious users

### 5. MCP Integration
```bash
# Standard MCP
omnara mcp

# With git tracking
omnara mcp --git-diff
```

---

## Workflow Examples {#workflows}

### Workflow 1: Mobile Development
```bash
# At your desk
omnara serve
# Copy URL: https://omnara.com/session/abc123

# On your phone
# Open URL, see Claude working
# Answer prompts while commuting
```

### Workflow 2: Overnight Processing
```bash
# Before bed
omnara headless --prompt "Refactor authentication system with best practices"

# Next morning
# Check dashboard for results
# Review and merge changes
```

### Workflow 3: Team Collaboration
```bash
# Developer A
omnara serve
# Share URL with team

# Developer B
# Opens URL, provides domain expertise
# Guides Claude together
```

### Workflow 4: Multi-Agent Orchestra
```bash
# Terminal 1: Frontend
omnara serve --port 8001

# Terminal 2: Backend  
omnara serve --port 8002

# Terminal 3: Testing
omnara serve --port 8003

# Manage all from dashboard
```

---

## Integration with Other Tools {#integrations}

### Cursor Integration
```bash
omnara --agent=cursor
```

### GitHub Copilot
```bash
# Configure in settings
omnara --agent=copilot
```

### CI/CD Pipeline
```python
# Using Omnara API
import requests

response = requests.post(
    "https://api.omnara.com/sessions",
    headers={"Authorization": f"Bearer {API_KEY}"},
    json={"prompt": "Run test suite and fix failures"}
)
```

### VS Code Extension
- Coming soon!
- Will provide in-editor Omnara controls

---

## Troubleshooting {#troubleshooting}

### Common Issues

#### "Command not found: omnara"
```bash
# Check Python path
echo $PATH

# Try with full path
~/.local/bin/omnara

# Or reinstall with pipx
pipx install omnara
```

#### "Authentication failed"
```bash
# Force re-authentication
omnara --reauth

# Check API key
omnara --api-key YOUR_KEY
```

#### "Can't connect to session"
- Ensure terminal stays open
- Check firewall settings
- Try `--no-tunnel` for local access

#### "Module not found" errors
```bash
# Use virtual environment
python -m venv omnara-env
source omnara-env/bin/activate  # Mac/Linux
omnara-env\Scripts\activate      # Windows
pip install omnara
```

---

## Advanced Features {#advanced}

### Custom Webhooks
```python
# omnara_webhook.py
from omnara import WebhookServer

server = WebhookServer(
    on_prompt=lambda msg: handle_prompt(msg),
    on_output=lambda msg: log_output(msg)
)
server.start()
```

### Batch Processing
```bash
# Run multiple prompts
for task in tasks.txt; do
    omnara headless --prompt "$task" &
done
wait
```

### Analytics API
```python
# Get session metrics
import omnara

client = omnara.Client(api_key="YOUR_KEY")
metrics = client.get_session_metrics(
    start_date="2024-01-01",
    end_date="2024-01-31"
)
```

### Custom Integrations
```yaml
# .omnara.yml
agents:
  - name: frontend-claude
    type: claude
    permissions: 
      - Read
      - Write
      - Bash
  - name: backend-cursor
    type: cursor
    permissions:
      - Read
      - Write
```

---

## Best Practices

### Security
1. Use `--no-tunnel` for sensitive projects
2. Enable 2FA on Omnara account
3. Rotate API keys regularly
4. Review session logs

### Performance
1. Close unused sessions
2. Use specific prompts
3. Enable caching
4. Batch similar tasks

### Team Usage
1. Establish naming conventions
2. Use project tags
3. Share session templates
4. Document workflows

---

## Pricing & Limits

| Feature | Free | Pro ($9/mo) | Enterprise |
|---------|------|-------------|------------|
| Sessions/month | 10 | Unlimited | Unlimited |
| Team members | 1 | 5 | Unlimited |
| API access | ❌ | ✅ | ✅ |
| Priority support | ❌ | ✅ | ✅ |
| Custom integrations | ❌ | ❌ | ✅ |

---

## Resources

- 🌐 **Website**: [omnara.com](https://omnara.com)
- 📱 **iOS App**: [App Store](https://apps.apple.com/app/omnara)
- 💻 **GitHub**: [github.com/omnara-ai/omnara](https://github.com/omnara-ai/omnara)
- 📧 **Support**: support@omnara.com
- 🐦 **Twitter**: [@omnara_ai](https://twitter.com/omnara_ai)
- 💬 **Discord**: [discord.gg/omnara](https://discord.gg/omnara)

---

## Quick Start Challenge

Try this 5-minute challenge:
1. Install Omnara: `pip install omnara`
2. Authenticate: `omnara --auth`  
3. Start a session: `omnara serve`
4. Open on your phone
5. Ask Claude to write a "Hello Omnara" script
6. Guide it from your phone!

---

*Transform your AI coding assistant into a collaborative partner with Omnara!*