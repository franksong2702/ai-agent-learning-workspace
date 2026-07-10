#!/bin/sh
set -eu

repo="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
ok=1

required_files='
README.md
SKILLS.md
AGENTS.md
AGENT-START-HERE.md
course-workspace/README.md
course-workspace/AGENT-START-HERE.md
course-workspace/units/README.md
course-workspace/units/00-workspace-entry/STUDENT.md
course-workspace/units/00-workspace-entry/AGENT-TASK.md
course-workspace/units/00-workspace-entry/REPO-ACCESS.md
course-workspace/units/00-workspace-entry/SLIDES.md
course-workspace/units/00-workspace-entry/SLIDES.html
course-workspace/units/01-agent-behavior-guide/STUDENT.md
course-workspace/units/01-agent-behavior-guide/AGENT-TASK.md
course-workspace/units/01-agent-behavior-guide/SLIDES.md
course-workspace/units/01-agent-behavior-guide/SLIDES.html
course-workspace/units/01-agent-behavior-guide/materials/KARPATHY-LLM-WIKI-SOURCE.md
course-workspace/units/01-agent-behavior-guide/materials/KARPATHY-LLM-WIKI-EN.md
course-workspace/units/01-agent-behavior-guide/materials/KARPATHY-LLM-WIKI-ZH.md
course-workspace/units/01-agent-behavior-guide/templates/KARPATHY-LEARNING-NOTE.md
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
course-workspace/units/04-web-pet-demo/templates/COLLABORATION-PLAN.md
course-workspace/units/04-web-pet-demo/templates/HUMAN-AI-DESIGN.md
course-workspace/units/04-web-pet-demo/templates/VALIDATION-REPORT.md
course-workspace/units/05-fuzzy-idea-to-project-path/STUDENT.md
course-workspace/units/05-fuzzy-idea-to-project-path/AGENT-TASK.md
course-workspace/units/05-fuzzy-idea-to-project-path/templates/PROJECT-BRIEF.md
course-workspace/units/05-fuzzy-idea-to-project-path/templates/PROJECT-PATH.md
course-workspace/units/05-fuzzy-idea-to-project-path/templates/NEXT-TASK.md
'

for rel in $required_files; do
  if [ ! -f "$repo/$rel" ]; then
    echo "missing file: $rel"
    ok=0
  fi
done

retired_paths='
course-workspace/CURRENT.md
course-workspace/DECISIONS.md
course-workspace/JOIN.md
course-workspace/LOG-2026-07.md
course-workspace/PROJECTS.md
course-workspace/ROLES.md
course-workspace/SOURCES.md
course-workspace/TASKS.md
course-workspace/artifacts
course-workspace/inbox
course-workspace/outputs
pre-lite-workspace
course-workspace/units/00-workspace-entry/PREPARE-WITH-CODEX.md
course-workspace/units/04-web-pet-demo/materials/COMPONENT-BRIDGE.md
'

for rel in $retired_paths; do
  if [ -e "$repo/$rel" ]; then
    echo "retired management path must not exist: $rel"
    ok=0
  fi
done

if grep -R -E 'gh[pousr]_[A-Za-z0-9_]{20,}|(^|[^A-Za-z0-9_-])sk-[A-Za-z0-9_-]{20,}|xox[baprs]-[A-Za-z0-9-]{20,}|BEGIN (RSA |OPENSSH |EC |DSA )?PRIVATE KEY|DEEPSEEK_API_KEY[[:space:]]*=[[:space:]]*[^<[:space:]]+' "$repo" --exclude-dir=.git >/dev/null 2>&1; then
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

if grep -R -E '绿[[:space:]]*/[[:space:]]*黄[[:space:]]*/[[:space:]]*红|My Obsidian Vault|Claude Code|Hermes|老师 Agent|第一个人 Agent|第二个人 Agent' "$repo" --exclude-dir=.git --exclude=check-workspace.sh --exclude=KARPATHY-LLM-WIKI-EN.md --exclude=KARPATHY-LLM-WIKI-ZH.md >/dev/null 2>&1; then
  echo "stale learner-facing wording found"
  ok=0
fi

if grep -R -E '学生|参与者|课程组织者|乐乐|宋乐涵' "$repo/course-workspace/units" >/dev/null 2>&1; then
  echo "personalized or excluded audience wording found in Unit materials"
  ok=0
fi

if grep -R -E '共享 Workspace|共享 workspace|共享输出|outputs/person|proposal-only|write-enabled|加入申请' "$repo/course-workspace/units" >/dev/null 2>&1; then
  echo "retired shared-write workflow found in Unit materials"
  ok=0
fi

if grep -R -E 'JOIN\.md|ROLES\.md|inbox/joins|outputs/person|proposal-only|write-enabled|加入申请|共享课程状态|尚未确认再分发许可|当前课程与 Skill 修订仍在本地，未 commit、未 push' \
  "$repo" --include='*.md' --exclude-dir=.git >/dev/null 2>&1; then
  echo "retired management or stale release wording found in Markdown"
  ok=0
fi

if ! grep -Fq 'DeepSeek 真实文本往返' "$repo/course-workspace/units/04-web-pet-demo/STUDENT.md"; then
  echo "Unit 4 missing real DeepSeek completion gate"
  ok=0
fi

if ! grep -Fq 'Unit 0：只准备两个' "$repo/SKILLS.md"; then
  echo "SKILLS.md missing Unit 0 two-skill boundary"
  ok=0
fi

if ! grep -Fq 'skills/productivity/teach' "$repo/course-workspace/units/00-workspace-entry/AGENT-TASK.md"; then
  echo "Unit 0 agent contract missing fixed teach source"
  ok=0
fi

if ! grep -Fq 'https://aihot.virxact.com/aihot-skill/install.sh' "$repo/course-workspace/units/00-workspace-entry/AGENT-TASK.md"; then
  echo "Unit 0 agent contract missing official AI Hot installer source"
  ok=0
fi

unit0_student_lines="$(wc -l < "$repo/course-workspace/units/00-workspace-entry/STUDENT.md" | tr -d ' ')"
if [ "$unit0_student_lines" -gt 110 ]; then
  echo "Unit 0 human page is too long: $unit0_student_lines lines"
  ok=0
fi

unit0_prompt_blocks="$(grep -c '^```text$' "$repo/course-workspace/units/00-workspace-entry/STUDENT.md" || true)"
if [ "$unit0_prompt_blocks" -ne 3 ]; then
  echo "Unit 0 human page must contain exactly three copyable prompts"
  ok=0
fi

if ! grep -Fq 'https://community.obsidian.md/plugins/realclaudian' "$repo/course-workspace/units/00-workspace-entry/STUDENT.md" || \
   ! grep -Fq 'https://github.com/YishenTu/claudian' "$repo/course-workspace/units/00-workspace-entry/STUDENT.md"; then
  echo "Unit 0 missing official Claudian sources"
  ok=0
fi

if ! grep -Fq 'Claudian 最小读写检查' "$repo/course-workspace/units/00-workspace-entry/STUDENT.md" || \
   ! grep -Fq 'CLAUDIAN-CHECK.md' "$repo/course-workspace/units/00-workspace-entry/STUDENT.md" || \
   ! grep -Fq 'provider 显示为 Codex' "$repo/course-workspace/units/00-workspace-entry/STUDENT.md"; then
  echo "Unit 0 missing inline Claudian check prompt"
  ok=0
fi

if ! grep -Fq 'CLAUDIAN-CHECK.md' "$repo/course-workspace/units/00-workspace-entry/AGENT-TASK.md" || \
   ! grep -Fq 'Claudian 失败不阻断后续直接使用 Codex' "$repo/course-workspace/units/00-workspace-entry/AGENT-TASK.md"; then
  echo "Unit 0 agent contract missing Claudian evidence or fallback"
  ok=0
fi

if ! grep -Fq 'AI-Engineering-KnowledgeBase' "$repo/course-workspace/units/00-workspace-entry/REPO-ACCESS.md"; then
  echo "Unit 0 repo access check missing AI Engineering Knowledge Base"
  ok=0
fi

if ! grep -Fq 'fork 到自己的 GitHub 账号' "$repo/course-workspace/units/00-workspace-entry/REPO-ACCESS.md"; then
  echo "Unit 0 repo access check missing public fork workflow"
  ok=0
fi

if ! grep -Fq '<个人 Obsidian 知识库>/Learn/Agent 101/Unit 0/SETUP-REPORT.md' "$repo/course-workspace/units/00-workspace-entry/AGENT-TASK.md"; then
  echo "Unit 0 prompt missing personal report path"
  ok=0
fi

unit1_student="$repo/course-workspace/units/01-agent-behavior-guide/STUDENT.md"
unit1_agent="$repo/course-workspace/units/01-agent-behavior-guide/AGENT-TASK.md"
unit1_slides="$repo/course-workspace/units/01-agent-behavior-guide/SLIDES.md"

unit1_prompt_blocks="$(grep -c '^```text$' "$unit1_student" || true)"
if [ "$unit1_prompt_blocks" -ne 1 ]; then
  echo "Unit 1 human page must contain exactly one copyable prompt: $unit1_prompt_blocks"
  ok=0
fi

if grep -E '第 [1-6] 轮|问题页|答案页|六轮问答' "$unit1_student" "$unit1_agent" "$unit1_slides" >/dev/null 2>&1; then
  echo "Unit 1 still contains the retired fixed-round Q&A flow"
  ok=0
fi

if grep -E '老师|演示|示范|讲师|讲稿|和老师一起' "$unit1_slides" >/dev/null 2>&1; then
  echo "Unit 1 Slides contain presenter-only wording"
  ok=0
fi

if ! grep -Fq '先用高中生能听懂的中文直接回答' "$unit1_student" || \
   ! grep -Fq '接受自然语言问题' "$unit1_agent"; then
  echo "Unit 1 missing accessible natural-discussion contract"
  ok=0
fi

if ! grep -Fq '请明确使用本机已经安装的 teach Skill' "$unit1_student" || \
   ! grep -Fq '正式使用 `teach` 阅读指定原文' "$repo/SKILLS.md" || \
   ! grep -Fq '不初始化 Teach 默认的完整长期工作区' "$unit1_agent"; then
  echo "Unit 1 missing the scoped Teach contract"
  ok=0
fi

unit1_self="$(grep -n -m1 -F '## 第一阶段：自己读、自己问' "$unit1_student" | cut -d: -f1 || true)"
unit1_teacher="$(grep -n -m1 -F '## 第二阶段：先讲给老师听' "$unit1_student" | cut -d: -f1 || true)"
unit1_slides_last="$(grep -n -m1 -F '## 第三阶段：最后看 Slides' "$unit1_student" | cut -d: -f1 || true)"
if [ -z "$unit1_self" ] || [ -z "$unit1_teacher" ] || [ -z "$unit1_slides_last" ] || \
   [ "$unit1_self" -ge "$unit1_teacher" ] || [ "$unit1_teacher" -ge "$unit1_slides_last" ]; then
  echo "Unit 1 must run self-questioning -> teacher questions -> Slides"
  ok=0
fi

if grep -Fq 'UNIT-2-WIKI-PLAN.md' "$unit1_student" || \
   grep -Fq 'Unit 2 启动提示词' "$unit1_student"; then
  echo "Unit 1 must not generate the Unit 2 plan"
  ok=0
fi

if ! grep -Fq '英文文件来源：老师于 2026-07-10 提供的课堂原文快照' \
  "$repo/course-workspace/units/01-agent-behavior-guide/materials/KARPATHY-LLM-WIKI-SOURCE.md"; then
  echo "Unit 1 source card missing the supplied snapshot provenance"
  ok=0
fi

if ! grep -Fq '## The core idea' \
  "$repo/course-workspace/units/01-agent-behavior-guide/materials/KARPATHY-LLM-WIKI-EN.md" || \
   ! grep -Fq '## 核心想法' \
  "$repo/course-workspace/units/01-agent-behavior-guide/materials/KARPATHY-LLM-WIKI-ZH.md"; then
  echo "Unit 1 local English or Chinese reading is incomplete"
  ok=0
fi

for concept in '三层架构' '三种操作' '人和 Agent 怎样分工' '下一单元'; do
  if ! grep -Fq "$concept" "$unit1_slides"; then
    echo "Unit 1 Slides missing core idea: $concept"
    ok=0
  fi
done

if grep -E '第 [1-6] 轮：问题|第 [1-6] 轮：答案' "$unit1_slides" >/dev/null 2>&1; then
  echo "Unit 1 Slides must list core ideas without Q&A answer pages"
  ok=0
fi

if grep -E 'JOIN\.md|ROLES\.md|proposal-only|write-enabled|加入申请|权限审批' \
  "$repo/AGENTS.md" \
  "$repo/README.md" \
  "$repo/AGENT-START-HERE.md" \
  "$repo/course-workspace/README.md" \
  "$repo/course-workspace/AGENT-START-HERE.md" \
  "$repo/course-workspace/units/00-workspace-entry/STUDENT.md" \
  "$repo/course-workspace/units/00-workspace-entry/AGENT-TASK.md" >/dev/null 2>&1; then
  echo "current entry or Unit 0 still references the retired management flow"
  ok=0
fi

if ! grep -Fq '课程 repo 默认只读' "$repo/AGENTS.md"; then
  echo "AGENTS.md missing current read-only course boundary"
  ok=0
fi

if ! grep -Fq '当前 Unit 的 `STUDENT.md`' "$repo/AGENTS.md" || \
   ! grep -Fq '同目录的 `AGENT-TASK.md`' "$repo/AGENTS.md"; then
  echo "AGENTS.md missing current human/Codex two-layer route"
  ok=0
fi

if ! grep -Fq '<个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/' "$repo/README.md"; then
  echo "README.md missing personal knowledge-base target path"
  ok=0
fi

if ! grep -Fq '前置条件缺失并停下' "$repo/README.md"; then
  echo "README.md must stop when the Obsidian Vault gate is missing"
  ok=0
fi

if ! grep -Fq '不要放进 Learn/Agent 101/' "$repo/README.md"; then
  echo "README.md must keep the course repo separate from personal learning notes"
  ok=0
fi

if ! grep -Fq '不要再次复制第 2 步的提示词，不要再次 clone' "$repo/README.md"; then
  echo "README.md missing explicit no-repeat instruction"
  ok=0
fi

step1="$(grep -n -m1 -F '## 第 1 步：' "$repo/README.md" | cut -d: -f1 || true)"
step2="$(grep -n -m1 -F '## 第 2 步：' "$repo/README.md" | cut -d: -f1 || true)"
step3="$(grep -n -m1 -F '## 第 3 步：' "$repo/README.md" | cut -d: -f1 || true)"
step4="$(grep -n -m1 -F '## 第 4 步：' "$repo/README.md" | cut -d: -f1 || true)"
if [ -z "$step1" ] || [ -z "$step2" ] || [ -z "$step3" ] || [ -z "$step4" ] || \
   [ "$step1" -ge "$step2" ] || [ "$step2" -ge "$step3" ] || [ "$step3" -ge "$step4" ]; then
  echo "README.md must contain one ordered Step 1 -> Step 4 path"
  ok=0
fi

human_action_pages='
README.md
course-workspace/units/00-workspace-entry/STUDENT.md
course-workspace/units/01-agent-behavior-guide/STUDENT.md
course-workspace/units/02-aihot-obsidian-pitch/STUDENT.md
course-workspace/units/03-llm-wiki-skill-lab/STUDENT.md
course-workspace/units/04-web-pet-demo/STUDENT.md
course-workspace/units/05-fuzzy-idea-to-project-path/STUDENT.md
'

for rel in $human_action_pages; do
  if ! grep -Fq '一键复制给 Codex' "$repo/$rel"; then
    echo "human action page missing inline Codex prompt: $rel"
    ok=0
  fi
  if ! grep -Fq '```text' "$repo/$rel"; then
    echo "human action page missing copyable text block: $rel"
    ok=0
  fi
done

if grep -R -E 'pre-lite-workspace|PREPARE-WITH-CODEX|\]\([^)]*prompts/' \
  "$repo" --include='*.md' --exclude-dir=.git >/dev/null 2>&1; then
  echo "current Markdown still routes people through a retired prompt page"
  ok=0
fi

if [ "$ok" -ne 1 ]; then
  exit 1
fi

echo "learning workspace material structure checks ok; classroom results not verified"
