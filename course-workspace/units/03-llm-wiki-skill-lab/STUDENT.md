# Unit 3：把 LLM Wiki 编译流程沉淀成 Skill

## 你要完成什么

Unit 2 已经让你亲手完成一次 `Raw -> 编译 -> 学习卡 -> Pitch`。本单元把其中真正会重复的步骤写成一个 mini Skill，并用第二篇 Raw 做一次试用。

Skill 不是收藏夹，也不是安装越多越好。它是一套你愿意让 Codex 反复遵守的工作方式，必须写清触发条件、输入、步骤、边界、输出和完成标准。

## 前置

- Unit 2 的 `COMPILATION-RULES.md`、`COMPILATION.md`、`LEARNING-CARD.md` 和 `PITCH.md` 可以打开。
- 已准备第二篇带来源的 Raw 文章；没有自选材料时可从 Unit 2 的 [备用文章池](../02-aihot-obsidian-pitch/materials/ARTICLE-CANDIDATES.md) 另选一篇。
- 已按 [课程 Skill 地图](../../../SKILLS.md) 准备 `writing-great-skills`，并确认 Codex 自带的 `skill-creator`、`skill-installer` 可用。
- 已确认个人 Obsidian 知识库的绝对路径。

缺少 Unit 2 产物时，先回去补齐或说明缺口，不要凭空写 Skill。

## Skill 草稿放哪里

```text
<个人 Obsidian 知识库>/Learn/Agent 101/Skills/aihot-to-llm-wiki-card/
  SKILL.md
  TRIAL-REPORT.md
```

这里是个人课程沉淀区，不是 Codex 的已安装 Skill 目录。草稿写完和试用完成后，由人明确决定是否安装；在确认前不要写入 `~/.codex/skills/`。

第二篇文章的知识产物仍写入：

```text
<个人 Obsidian 知识库>/Learn/Wiki/<第二主题>/
```

课程 repo 只提供模板和说明，本单元保持只读；Skill 草稿、试用报告和个人学习卡都留在个人 Obsidian。

## 一键复制给 Codex：开始 Unit 3

```text
请和我开始 Agent 101 的 Unit 3。

先读取课程 repo 中的 SKILLS.md，以及：
- course-workspace/units/03-llm-wiki-skill-lab/STUDENT.md
- course-workspace/units/03-llm-wiki-skill-lab/AGENT-TASK.md
- course-workspace/units/03-llm-wiki-skill-lab/templates/MINI-SKILL.md
- course-workspace/units/03-llm-wiki-skill-lab/templates/TRIAL-REPORT.md

先检查 writing-great-skills、skill-creator、skill-installer 是否可用；缺失项只按 SKILLS.md 的固定来源处理，不搜索同名替代品，不覆盖现有目录。

请我确认个人 Obsidian 知识库、Unit 2 产物和第二篇 Raw 的绝对路径。Skill 草稿只写入 <个人 Obsidian 知识库>/Learn/Agent 101/Skills/aihot-to-llm-wiki-card/，第二篇文章产物写入 Learn/Wiki/<第二主题>/。

先帮助我从 Unit 2 找出真正重复的步骤，再用模板建立 Skill 草稿。草稿完成后停下，让我使用本页后面的“手动试用提示词”。未经我明确决定，不安装 Skill。不要修改课程 repo，不 commit 或 push。
```

## 课堂动作

1. 点击上面代码块右上角的复制按钮，把完整提示词发给 Codex。
2. 由 Codex 按 `SKILLS.md` 完成 Unit 3 安装检查；不重复安装 Codex 自带 Skill。
3. 回看 Unit 2，列出每次都会重复的步骤和只属于那篇文章的内容。
4. 用模板建立或检查草稿结构，但内容仍来自 Unit 2 的真实流程。
5. 把下面的“手动试用提示词”发给 Codex，用第二篇 Raw 试用草稿。
6. 打开 [试用报告模板](templates/TRIAL-REPORT.md)，记录实际输入、输出、偏差和修改。
7. 修改 `SKILL.md`，收紧容易误触发或越权的动作。
8. 由你确认是否安装；没有明确确认时默认不安装。

手动试用不是把 Skill 安装到系统里，而是明确告诉 Codex：本次只按这份草稿执行。未安装时，你每次都要提供草稿绝对路径；正式安装只是让它以后更容易被找到和调用，不会增加权限。`disable-model-invocation: true` 表示这份 Skill 只能由人主动调用，Codex 和其他 Skill 不会自动触发它。

```text
请不要安装这份 Skill。请读取以下个人草稿并只在本次任务中按它执行：
[填写个人 Skill 草稿 SKILL.md 的绝对路径]

第二篇 Raw 路径：[填写绝对路径]
原文链接：[填写链接]
第二主题：[填写主题]
个人 Obsidian 知识库：[填写绝对路径]
这次最想弄明白的问题：[用自己的话写一个问题]
Pitch 面向谁：[例如课堂中的其他人]
Pitch 重点：[最希望讲清的一点]

开始前先复述唯一写入目录、人工确认门和禁止动作，等我确认后再处理。
```

如果 `writing-great-skills` 当前不可用，先使用本 Unit 的 mini Skill 模板完成结构草稿，并在试用报告中明确写“参考 Skill 尚未检查”；不要因此跳过第二篇 Raw 试用。

## 完成标准

- 个人 Skill 目录中存在 `SKILL.md` 和 `TRIAL-REPORT.md`。
- `SKILL.md` 写清什么时候用、什么时候不用、输入、步骤、输出、人工确认门和禁止动作。
- 第二篇 Raw 的试用产物位于 `Learn/Wiki/<第二主题>/`，并完成一次来源核对。
- `TRIAL-REPORT.md` 记录至少一个问题和对应修改。
- 是否安装已有人的明确决定；未决定等同于不安装。

## 两份扩展附录

- [8 个课程 Skill 与发现入口](materials/SKILL-CATALOG.md)：查看课程级总表、固定来源和常用发现入口，不把 Skill 当收藏夹。
- [外部 Skill 的导入与保存](materials/IMPORT-AND-SAVE.md)：练习发现、暂存、审计、试用、安装和保留出处。

附录是扩展知识。课堂先完成 mini Skill 和第二篇 Raw 试用，再根据时间选择讲解；不要求一次安装全部 Skill。
