---
type: workspace-start
project: AI Agent Learning Workspace
stage: public-repo-entry
updated: 2026-07-10
audience: learners
---

# Agent 101 课程 workspace

你会看到这个页面，说明已经打开公开课程 workspace。不需要等待 GitHub 邀请；下一步是把课程 workspace 正确放进 Obsidian。

## 先判断你现在在哪里

- **如果你在 GitHub 网页中打开这个页面**：课程文件还没有放进电脑。下一步把 [给 Codex 的 workspace 安装提示词](prompts/workspace-setup-prompt.md) 全文发给 Codex。
- **如果你在 Obsidian 左侧文件列表中打开这个页面**：课程 workspace 已经放对位置，可以继续看下面的承接清单。

## Codex 会做什么，你确认什么

课前准备好的 Obsidian Vault 是你的长期个人知识库，不是课程专用文件夹；新建时推荐位置是 `~/Obsidian/`。Codex 会在你的确认下：确认这个 Vault、建立缺失的课程文件夹、克隆课程 workspace、检查远程地址和关键文件。

你只需要：确认使用哪一个 Vault、核对 Codex 报告的绝对路径，并在 Obsidian 左侧文件列表中看到课程入口。

课程 workspace 的唯一位置是：

```text
<你的个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/
```

目录职责不要混淆：`Learn/Agent 101/` 只放自己的课程笔记、反思和 Skill 练习；上面的 `Projects/AI Agent Learning Workspace/` 才是 GitHub 课程 workspace。不要复制整份课程 repo 到 `Learn/Agent 101/`，个人笔记也不需要复制进课程 workspace。

不要从网页下载压缩包，也不要把课程文件放到桌面、下载文件夹或 `~/Projects/`。

## 安装完成后继续

在 Obsidian 中打开 [已进入课程 workspace：下一步确认清单](materials/day-minus-1-preflight-checklist.md)。它会说明人要确认什么、Codex 可以执行什么，以及怎样把结果发给老师。

如果 Codex 已经完成安装，但还需要它检查路径和文件，可以把 [给 Codex 的 workspace 继续准备提示词](prompts/preflight-agent-prompt.md) 发给它。

最后按 [workspace 确认回复模板](templates/preflight-reply-template.md) 回复老师。

workspace 路径确认后，可以在课前继续完成 [Unit 0：课前准备与验证](../course-workspace/units/00-workspace-entry/STUDENT.md)。Unit 0 会让 Codex 安装并验证 `teach`、`aihot`，检查报告只写入个人 Obsidian。不要自行进入 Unit 1 或后续 Unit。
