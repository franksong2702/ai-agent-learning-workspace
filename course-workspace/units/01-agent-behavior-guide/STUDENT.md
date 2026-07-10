# Unit 1：给 Codex 一份行为说明

## 什么算完成

- Codex 已读取本单元的轻量行为说明。
- 你用自然语言交给 Codex 一个小任务，没有填写复杂表格。
- Codex 在你的共享提交目录创建了 `first-agent-note.md`。
- 你亲自打开文件，确认路径正确、内容看得懂，而且符合你的原意。

开始前先打开自己的加入申请，确认“老师确认”一节已经把批准模式写为 `write-enabled`，并且写入范围包含自己的 `outputs/person-N/`。仍是“等待确认”或 `proposal-only` 时，不进入本单元。

## 1. 让 Codex 读取行为说明

打开 [Codex 行为说明模板](templates/AGENT-BEHAVIOR-GUIDE.md)，然后对 Codex 说：

```text
请先读取这份 Codex 行为说明，并在本单元按它做事。先告诉我这次要写到哪个文件，再开始。
```

这份说明只约定几件基本事情：先说清目标，内容落到文件，危险动作先问人，完成后给出验证证据。

## 2. 用自然语言交一个小任务

你可以直接说：

```text
请把“这节课我想学会怎样让 Codex 帮我做事”整理成一份很短的课堂记录，写到我的共享提交目录。如果我没说清楚，先问我一个问题。
```

Codex 应先确认目标文件，再根据 [第一次 Codex 课堂记录模板](templates/FIRST-AGENT-NOTE.md) 写出短记录。

## 3. 只留下课堂要求共享的提交

根据你在 [ROLES.md](../../ROLES.md) 中的身份，选择唯一对应的文件：

| 你代表谁 | 共享提交文件 |
| --- | --- |
| 第一个人 | `course-workspace/outputs/person-1/first-agent-note.md` |
| 第二个人 | `course-workspace/outputs/person-2/first-agent-note.md` |

不要写进另一人的目录。更完整的个人笔记继续放在 `<个人知识库>/Learn/Agent 101/`，不复制到共享 `outputs/`。

## 4. 人工打开文件检查

不要只看 Codex 说“完成了”。请在 Obsidian 或文件管理器中实际打开 `first-agent-note.md`，检查：

- 文件确实位于自己的 `outputs/person-N/`。
- 四个小节都有简短、可读的内容。
- 内容表达的是你的目标和发现，不是空泛套话。
- 你知道怎样直接修改这份 Markdown 文件。

如果文件不存在、路径不对或内容不符合原意，让 Codex 只修正这一个文件，然后再次打开检查。
