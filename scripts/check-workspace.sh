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
pre-lite-workspace/prompts/github-primer-prompt.md
pre-lite-workspace/prompts/workspace-setup-prompt.md
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
course-workspace/units/00-workspace-entry/STUDENT.md
course-workspace/units/00-workspace-entry/AGENT-TASK.md
course-workspace/units/01-agent-behavior-guide/STUDENT.md
course-workspace/units/01-agent-behavior-guide/AGENT-TASK.md
course-workspace/units/01-agent-behavior-guide/templates/AGENT-BEHAVIOR-GUIDE.md
course-workspace/units/01-agent-behavior-guide/templates/FIRST-AGENT-NOTE.md
course-workspace/units/02-aihot-obsidian-pitch/STUDENT.md
course-workspace/units/02-aihot-obsidian-pitch/AGENT-TASK.md
course-workspace/units/02-aihot-obsidian-pitch/templates/COMPILATION-RULES.md
course-workspace/units/02-aihot-obsidian-pitch/templates/LEARNING-CARD.md
course-workspace/units/02-aihot-obsidian-pitch/templates/PITCH.md
course-workspace/units/02-aihot-obsidian-pitch/materials/WEB-CLIPPER-SETUP.md
course-workspace/units/02-aihot-obsidian-pitch/materials/ARTICLE-CANDIDATES.md
course-workspace/units/03-llm-wiki-skill-lab/STUDENT.md
course-workspace/units/03-llm-wiki-skill-lab/AGENT-TASK.md
course-workspace/units/03-llm-wiki-skill-lab/templates/MINI-SKILL.md
course-workspace/units/03-llm-wiki-skill-lab/templates/TRIAL-REPORT.md
course-workspace/units/03-llm-wiki-skill-lab/materials/SKILL-CATALOG.md
course-workspace/units/03-llm-wiki-skill-lab/materials/IMPORT-AND-SAVE.md
course-workspace/units/04-web-pet-demo/STUDENT.md
course-workspace/units/04-web-pet-demo/AGENT-TASK.md
course-workspace/units/04-web-pet-demo/materials/COMPONENT-BRIDGE.md
course-workspace/units/04-web-pet-demo/templates/COLLABORATION-PLAN.md
course-workspace/units/04-web-pet-demo/templates/HUMAN-AI-DESIGN.md
course-workspace/units/04-web-pet-demo/templates/VALIDATION-REPORT.md
course-workspace/units/05-fuzzy-idea-to-project-path/STUDENT.md
course-workspace/units/05-fuzzy-idea-to-project-path/AGENT-TASK.md
course-workspace/units/05-fuzzy-idea-to-project-path/templates/PROJECT-BRIEF.md
course-workspace/units/05-fuzzy-idea-to-project-path/templates/PROJECT-PATH.md
course-workspace/units/05-fuzzy-idea-to-project-path/templates/NEXT-TASK.md
course-workspace/outputs/README.md
course-workspace/outputs/person-1/README.md
course-workspace/outputs/person-2/README.md
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

if ! grep -Fq '第一个人的 Codex' "$repo/course-workspace/ROLES.md"; then
  echo "ROLES.md missing 第一个人的 Codex"
  ok=0
fi

if ! grep -Fq '第二个人的 Codex' "$repo/course-workspace/ROLES.md"; then
  echo "ROLES.md missing 第二个人的 Codex"
  ok=0
fi

if ! grep -Fq '老师的 Codex' "$repo/course-workspace/ROLES.md"; then
  echo "ROLES.md missing 老师的 Codex"
  ok=0
fi

if grep -R -E '绿[[:space:]]*/[[:space:]]*黄[[:space:]]*/[[:space:]]*红|My Obsidian Vault|Claude Code|Hermes|老师 Agent|第一个人 Agent|第二个人 Agent' "$repo" --exclude-dir=.git --exclude=check-workspace.sh >/dev/null 2>&1; then
  echo "stale learner-facing wording found"
  ok=0
fi

if grep -R -E '学生|参与者|课程组织者|乐乐|宋乐涵' "$repo/course-workspace/units" >/dev/null 2>&1; then
  echo "personalized or excluded audience wording found in Unit materials"
  ok=0
fi

if ! grep -Fq 'DeepSeek 真实文本往返' "$repo/course-workspace/units/04-web-pet-demo/STUDENT.md"; then
  echo "Unit 4 missing real DeepSeek completion gate"
  ok=0
fi

if ! grep -Fq '~/Obsidian/' "$repo/README.md"; then
  echo "README.md missing current Obsidian path"
  ok=0
fi

if ! grep -Fq 'stage: after-github-invitation' "$repo/pre-lite-workspace/materials/day-minus-1-preflight-checklist.md"; then
  echo "workspace continuation checklist missing after-invitation stage"
  ok=0
fi

if ! grep -Fq '<个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/' "$repo/pre-lite-workspace/prompts/workspace-setup-prompt.md"; then
  echo "workspace setup prompt missing personal knowledge-base target path"
  ok=0
fi

if ! grep -Fq '邀请前的 Obsidian 准备没有完成' "$repo/pre-lite-workspace/prompts/workspace-setup-prompt.md"; then
  echo "workspace setup prompt must stop when the pre-invite Vault gate is missing"
  ok=0
fi

if ! grep -Fq '不要把仓库 clone 到 `Learn/Agent 101/`' "$repo/pre-lite-workspace/prompts/workspace-setup-prompt.md"; then
  echo "workspace setup prompt must keep the personal learning directory separate"
  ok=0
fi

if [ "$ok" -ne 1 ]; then
  exit 1
fi

echo "learning workspace material structure checks ok; classroom results not verified"
