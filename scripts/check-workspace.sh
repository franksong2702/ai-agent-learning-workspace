#!/bin/sh
set -eu

repo="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
ok=1

required_files='
README.md
AGENTS.md
AGENT-START-HERE.md
pre-lite-workspace/README.md
pre-lite-workspace/START-HERE.md
pre-lite-workspace/materials/day-minus-1-preflight-checklist.md
pre-lite-workspace/prompts/preflight-agent-prompt.md
pre-lite-workspace/templates/preflight-reply-template.md
course-workspace/README.md
course-workspace/AGENT-START-HERE.md
course-workspace/JOIN.md
course-workspace/PROJECTS.md
course-workspace/CURRENT.md
course-workspace/TASKS.md
course-workspace/DECISIONS.md
course-workspace/ROLES.md
course-workspace/SOURCES.md
course-workspace/LOG-2026-07.md
course-workspace/inbox/README.md
course-workspace/inbox/joins/TEMPLATE.md
course-workspace/artifacts/README.md
course-workspace/units/README.md
course-workspace/outputs/README.md
course-workspace/outputs/lele/README.md
course-workspace/outputs/song-lehan/README.md
'

for rel in $required_files; do
  if [ ! -f "$repo/$rel" ]; then
    echo "missing file: $rel"
    ok=0
  fi
done

if grep -R -E 'gh[pousr]_[A-Za-z0-9_]{20,}|sk-[A-Za-z0-9_-]{20,}|xox[baprs]-[A-Za-z0-9-]{20,}|BEGIN (RSA |OPENSSH |EC |DSA )?PRIVATE KEY|DEEPSEEK_API_KEY[[:space:]]*=[[:space:]]*[^<[:space:]]+' "$repo" --exclude-dir=.git >/dev/null 2>&1; then
  echo "possible secret found"
  ok=0
fi

if grep -R -F 'agent101-student-pilot/' "$repo" --exclude-dir=.git --exclude=check-workspace.sh >/dev/null 2>&1; then
  echo "old course path found: agent101-student-pilot/"
  ok=0
fi

if [ -d "$repo/ai-pet-demo" ] || [ -d "$repo/node_modules" ]; then
  echo "code repo content must not live in the learning workspace"
  ok=0
fi

if ! grep -Fq '乐乐 Agent' "$repo/course-workspace/ROLES.md"; then
  echo "ROLES.md missing 乐乐 Agent"
  ok=0
fi

if ! grep -Fq '宋乐涵 Agent' "$repo/course-workspace/ROLES.md"; then
  echo "ROLES.md missing 宋乐涵 Agent"
  ok=0
fi

if ! grep -Fq '讲师 Agent' "$repo/course-workspace/ROLES.md"; then
  echo "ROLES.md missing 讲师 Agent"
  ok=0
fi

if [ "$ok" -ne 1 ]; then
  exit 1
fi

echo "ai-agent-learning-workspace checks ok"
