# Unit 1：给 Codex 一份行为说明

## 这次要学什么

你不需要每次填写复杂任务卡。日常使用 Codex 时，可以像聊天一样用自然语言说明想做什么；一份简短的行为说明负责让 Codex 保持稳定的工作习惯。

本单元完成一个很小的闭环：

```text
你用自然语言提出一个小任务
-> Codex 先确认目标文件
-> Codex 按行为说明写一份 Markdown 记录
-> 你打开文件并提出一次修改
-> Codex 只修正这一处
```

## 开始前确认

- Unit 0 的 `SETUP-REPORT.md` 可以打开。
- [三个公开 Repo 检查](../00-workspace-entry/REPO-ACCESS.md)已经完成；不需要 GitHub 邀请。
- 课程 repo 位于个人 Obsidian 的 `Projects/AI Agent Learning Workspace/`。
- 个人 Obsidian Vault 的绝对路径已经确认。

Unit 0 已安装 `teach`。本单元不强制调用；只有 GitHub、Markdown 或 Agent 行为规则确实听不懂时，才明确要求 Codex 在个人 `Learn/Agent 101/` 中使用 `teach`。完整安排见 [课程 Skill 地图](../../../SKILLS.md)。

## 文件放在哪里

课程模板从公开课程 repo 读取，个人产物只写入：

```text
<个人 Obsidian 知识库>/Learn/Agent 101/Unit 1/FIRST-AGENT-NOTE.md
```

不要修改课程 repo，也不需要把这份记录提交到 GitHub。

## 一键复制给 Codex：开始 Unit 1

```text
请和我开始 Agent 101 的 Unit 1。

先读取课程 repo 中的：
- course-workspace/units/01-agent-behavior-guide/STUDENT.md
- course-workspace/units/01-agent-behavior-guide/AGENT-TASK.md
- course-workspace/units/01-agent-behavior-guide/templates/AGENT-BEHAVIOR-GUIDE.md
- course-workspace/units/01-agent-behavior-guide/templates/FIRST-AGENT-NOTE.md

请我确认个人 Obsidian 知识库绝对路径，并把唯一输出设为：
<个人 Obsidian 知识库>/Learn/Agent 101/Unit 1/FIRST-AGENT-NOTE.md

先用不超过 150 字解释这份行为说明会怎样约束你，再完成这个小任务：把“这节课我想学会怎样让 Codex 帮我做事”整理成一份很短的课堂记录。如果我没说清楚，先只问一个问题。

写完后让我在 Obsidian 中打开检查。等我指出一个具体问题后，只修改那一处，再让我重新检查。不要修改课程 repo，不 commit 或 push。
```

## 课堂动作

1. 点击上面代码块右上角的复制按钮，把完整提示词发给 Codex。
2. 回答 Codex 对个人 Obsidian 路径和任务内容的确认问题。
3. Codex 根据模板写入个人 `FIRST-AGENT-NOTE.md`。
4. 在 Obsidian 中亲自打开文件，检查路径和内容。
5. 指出一个具体问题，让 Codex 只修改这一处，再重新打开检查。

你也可以直接在 Obsidian 中修改 Markdown。重点不是必须让 Codex 改，而是知道文件在哪里、内容由谁决定、怎样验证它真的改对了。

## 什么算完成

- 三个公开 repo 都能在浏览器打开，课程 repo 已在 Obsidian 中可见。
- `FIRST-AGENT-NOTE.md` 位于个人 `Learn/Agent 101/Unit 1/`。
- 记录简短表达了你的目标和发现，不是空泛套话。
- 你完成一次“指出具体问题 -> Codex 只改这一处 -> 重新打开确认”。
- 课程 repo 没有因本单元产生个人作业或状态文件。
