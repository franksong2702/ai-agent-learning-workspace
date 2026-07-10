---
type: workspace-continuation-checklist
project: AI Agent Learning Workspace
stage: after-github-invitation
updated: 2026-07-10
audience: learners-and-codex
---

# 已进入课程 workspace：下一步确认清单

你已经完成了邀请前的课前确认，并且能在网页上打开课程 workspace。这里不是第二份课前清单，而是下一步的操作入口：把课程 workspace 正确放进你的长期个人 Obsidian 知识库，让你和 Codex 都能看到同一批文件。课程 workspace 只是这个知识库中的一个项目。

## 现在的顺序

1. 已接受 GitHub 邀请，并能看到课程 workspace 的文件列表。
2. 在网页中打开 [给 Codex 的 workspace 安装提示词](../prompts/workspace-setup-prompt.md)，把全文发给 Codex。
3. Codex 先确认邀请前已经准备好的个人 Obsidian 知识库，再建立课程文件夹骨架。
4. Codex 将课程 workspace 克隆到唯一指定的位置。
5. 在 Obsidian 左侧文件列表中打开课程入口。

不要从网页下载压缩包，不要把课程文件放到桌面、下载文件夹或 `~/Projects/`。

## 唯一正确的目录关系

```text
<你的个人 Obsidian 知识库>/
  Inbox/
  Learn/
    Wiki/
    Agent 101/
  Projects/
    AI Agent Learning Workspace/  <- 课程 workspace 在这里
  Work/
  Diary/
```

课程 workspace 的目标路径必须是：

```text
<个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/
```

两处目录放不同内容：`Learn/Agent 101/` 是自己的课程笔记、反思和 Skill 练习；`Projects/AI Agent Learning Workspace/` 是 GitHub 课程 workspace。不要把同一份材料复制到两处。

完成后，在 Obsidian 中打开：

```text
Projects/AI Agent Learning Workspace/pre-lite-workspace/README.md
```

## 人确认什么，Codex 做什么

你需要确认：

- 使用哪一个个人 Obsidian 知识库。
- 是否已经接受 GitHub 邀请。
- Codex 报告的绝对路径是否正确。
- 最后能否在 Obsidian 左侧文件列表中看到课程入口。

Codex 可以协助：

- 确认现有 Vault；有多个候选时请你选择。
- 只创建缺失的课程文件夹。
- 克隆课程 workspace，并检查远程地址和关键文件。
- 报告 GitHub 授权、Git 或路径错误。

如果目标文件夹已经有内容，或 Codex 报错，不要自己换位置或覆盖文件。把错误写成“需要协助”，交给老师处理。

## 完成后回复老师

```text
GitHub 邀请：已接受 / 需要协助
个人 Obsidian 知识库：<绝对路径>
课程 workspace：<绝对路径>
Obsidian 中已找到课程入口：已完成 / 需要协助

需要协助：
-
```

发出回复后停在这里，等待老师确认。不要重新打开 `pre-lite-workspace/README.md` 重复安装，也不要自行进入课堂 Unit。

老师确认后会明确说“开始课堂”，并让你打开：

```text
course-workspace/units/00-workspace-entry/STUDENT.md
```
