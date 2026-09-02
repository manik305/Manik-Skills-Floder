#!/usr/bin/env bash
# Synchronizes skills from 'skills/' into Antigravity (.agents/), Claude Code (.claude/), and Cursor (.cursor/)

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MASTER_SKILLS_DIR="$ROOT_DIR/skills"

if [ ! -d "$MASTER_SKILLS_DIR" ]; then
  echo "Master skills directory not found at $MASTER_SKILLS_DIR"
  exit 1
fi

AGENTS_DIR="$ROOT_DIR/.agents/skills"
CLAUDE_DIR="$ROOT_DIR/.claude/skills"
CURSOR_SKILLS_DIR="$ROOT_DIR/.cursor/skills"
CURSOR_RULES_DIR="$ROOT_DIR/.cursor/rules"
GLOBAL_GEMINI_DIR="$HOME/.gemini/config/skills"

mkdir -p "$AGENTS_DIR" "$CLAUDE_DIR" "$CURSOR_SKILLS_DIR" "$CURSOR_RULES_DIR"

echo "============================================================"
echo "   Multi-Client Skills Synchronizer (Antigravity/Claude/Cursor) "
echo "============================================================"

for skill_path in "$MASTER_SKILLS_DIR"/*; do
  if [ -d "$skill_path" ]; then
    skill_name="$(basename "$skill_path")"
    source_md="$skill_path/SKILL.md"

    if [ ! -f "$source_md" ]; then
      echo "Skipping $skill_name: No SKILL.md found."
      continue
    fi

    echo ""
    echo "[+] Synchronizing skill: $skill_name"

    # Antigravity
    mkdir -p "$AGENTS_DIR/$skill_name"
    cp -f "$source_md" "$AGENTS_DIR/$skill_name/SKILL.md"
    echo "  -> Synced to Antigravity (.agents/skills/$skill_name)"

    # Claude Code
    mkdir -p "$CLAUDE_DIR/$skill_name"
    cp -f "$source_md" "$CLAUDE_DIR/$skill_name/SKILL.md"
    echo "  -> Synced to Claude Code (.claude/skills/$skill_name)"

    # Cursor
    mkdir -p "$CURSOR_SKILLS_DIR/$skill_name"
    cp -f "$source_md" "$CURSOR_SKILLS_DIR/$skill_name/SKILL.md"
    echo "  -> Synced to Cursor (.cursor/skills/$skill_name)"

    # Cursor MDC Rule
    cursor_rule="$CURSOR_RULES_DIR/$skill_name.mdc"
    if [ ! -f "$cursor_rule" ]; then
      cat <<EOF > "$cursor_rule"
---
description: Autonomous skill integration for $skill_name.
globs: ["*"]
---

$(cat "$source_md")
EOF
      echo "  -> Generated Cursor Rule (.cursor/rules/$skill_name.mdc)"
    fi

    # Global Antigravity Config
    if [ -d "$GLOBAL_GEMINI_DIR/$skill_name" ]; then
      cp -f "$source_md" "$GLOBAL_GEMINI_DIR/$skill_name/SKILL.md"
      echo "  -> Synced to Global Antigravity Config ($GLOBAL_GEMINI_DIR/$skill_name)"
    fi
  fi
done

echo ""
echo "All skills successfully synchronized across Antigravity, Claude Code, and Cursor!"
