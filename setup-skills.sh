#!/bin/bash
# Install PM Skills into .kiro/skills/
# Usage: bash setup-skills.sh [/path/to/pm-skills]

PM_SKILLS_DIR="${1:-../pm-skills}"

if [ ! -d "$PM_SKILLS_DIR" ]; then
  echo "pm-skills repo not found at: $PM_SKILLS_DIR"
  echo ""
  echo "First clone it next to this project:"
  echo "  cd .. && git clone https://github.com/phuryn/pm-skills.git && cd -"
  echo ""
  echo "Then run: bash setup-skills.sh"
  exit 1
fi

mkdir -p .kiro/skills/

for plugin in "$PM_SKILLS_DIR"/pm-*/; do
  if [ -d "$plugin/skills" ]; then
    cp -r "$plugin/skills/"* .kiro/skills/ 2>/dev/null
    echo "Copied skills from $(basename "$plugin")"
  fi
done

echo ""
echo "Done! Skills installed to .kiro/skills/"
echo "Open this folder in Kiro IDE to get started."
