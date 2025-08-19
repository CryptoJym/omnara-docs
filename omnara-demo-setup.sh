#!/bin/bash

# Omnara Demo Setup Script
# This script demonstrates various Omnara configurations

echo "🚀 Omnara Demo Setup Script"
echo "=========================="
echo ""

# Check if Omnara is installed
if ! command -v omnara &> /dev/null; then
    echo "❌ Omnara is not installed. Installing now..."
    pip install omnara || pip3 install omnara || pipx install omnara
else
    echo "✅ Omnara is already installed"
    omnara --version
fi

echo ""
echo "📋 Available Omnara Commands:"
echo "-----------------------------"
echo ""

echo "1. Basic Monitoring Mode:"
echo "   omnara"
echo "   (Monitors existing Claude Code session)"
echo ""

echo "2. Remote Control Mode:"
echo "   omnara serve"
echo "   (Allows control from phone/web)"
echo ""

echo "3. Local Network Only:"
echo "   omnara serve --no-tunnel"
echo "   (No internet tunnel, local access only)"
echo ""

echo "4. Headless Mode:"
echo "   omnara headless"
echo "   (Control via web dashboard)"
echo ""

echo "5. MCP Server Mode:"
echo "   omnara mcp"
echo "   (For Model Context Protocol integration)"
echo ""

echo "6. With Git Diff Tracking:"
echo "   omnara mcp --git-diff"
echo "   (Tracks code changes in real-time)"
echo ""

echo "📱 Mobile Setup Instructions:"
echo "----------------------------"
echo "1. Run: omnara serve"
echo "2. Copy the URL shown"
echo "3. Open URL on your phone"
echo "4. Download Omnara app from App Store (iOS)"
echo ""

echo "🔐 First Time Setup:"
echo "-------------------"
echo "Run: omnara --auth"
echo "(This opens your browser for authentication)"
echo ""

echo "💡 Pro Tips:"
echo "-----------"
echo "• Keep terminal open while using Omnara"
echo "• Free tier: 10 sessions/month"
echo "• Pro tier: $9/month for unlimited"
echo "• Enable mobile notifications for important prompts"
echo ""

echo "🌐 Resources:"
echo "------------"
echo "Dashboard: https://omnara.com"
echo "GitHub: https://github.com/omnara-ai/omnara"
echo "Support: support@omnara.com"
echo ""

echo "Ready to start? Try one of the commands above!"