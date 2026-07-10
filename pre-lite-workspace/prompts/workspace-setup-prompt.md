---
type: codex-prompt
project: AI Agent Learning Workspace
status: active
updated: 2026-07-10
audience: codex
---

# 给 Codex 的 workspace 安装提示词

我已经能在网页上打开公开课程 workspace，不需要 GitHub 邀请。请你帮我把它正确放进 Obsidian，让我以后能在 Obsidian 左侧文件列表里直接看到它。

请严格按以下顺序工作，不要跳步，也不要把课程文件放到桌面、下载文件夹或 `~/Projects/`。

## 1. 先确认课前已准备好的个人 Obsidian Vault

这里的 Vault 是长期使用的个人知识库，不是课程专用文件夹。新建 Vault 的推荐位置是 `~/Obsidian/`，其中 `~` 代表 Mac 的用户名文件夹；如果已经有一个会长期使用的 Vault，则使用现有 Vault，不要求迁移。

1. 先查找这台电脑上现有的 Obsidian Vault。
2. 如果只找到一个 Vault，请告诉我它的绝对路径，并问我是否确认使用它。
3. 如果找到多个 Vault，不要替我猜。请让我选择一个，再向你提供它的绝对路径。
4. 如果一个 Vault 也没有找到，说明课前的 Obsidian 准备没有完成。告诉我这个前置条件缺失，并停下；不要在此时创建 Vault，也不要只在终端创建一个同名普通文件夹来冒充 Vault。

在我确认 Vault 路径前，不要创建任何课程文件夹，也不要下载仓库。

## 2. 在确认的 Vault 中建立课程文件夹骨架

确认 Vault 路径后，只创建缺失的目录：

```text
<个人 Obsidian 知识库>/Inbox/
<个人 Obsidian 知识库>/Learn/Wiki/
<个人 Obsidian 知识库>/Learn/Agent 101/
<个人 Obsidian 知识库>/Projects/
<个人 Obsidian 知识库>/Work/
<个人 Obsidian 知识库>/Diary/
```

不要改动 Vault 里已经存在的文件或文件夹。

目录职责：`Learn/Agent 101/` 只放个人课程笔记、反思和 Skill 练习；`Projects/AI Agent Learning Workspace/` 才放 GitHub 课程 workspace。不要把仓库 clone 到 `Learn/Agent 101/`，也不要把个人笔记复制进课程 workspace。

## 3. 把课程 workspace 克隆到唯一指定的位置

课程仓库地址：

```text
https://github.com/franksong2702/ai-agent-learning-workspace.git
```

唯一目标目录是：

```text
<个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/
```

克隆前先检查目标目录：

- 目标目录不存在时，才克隆。
- 如果它已经是同一个课程仓库的本地副本，不要重复克隆；告诉我当前状态并停下。
- 如果它存在但不是同一个课程仓库，或里面已有其他文件，不要覆盖、删除或换一个位置；报告你看到的情况并停下。

如果 Git、网络或克隆命令报错，请告诉我准确报错和下一步最小操作。公开 repo 的 clone 不需要访问令牌；不要要求我把密码、验证码、访问令牌、API key 或付款信息发给你。

## 4. 完成后验证并告诉我在哪里看

完成后请验证：

1. workspace 的远程地址是上面的 GitHub 地址。
2. 目标目录中有 `pre-lite-workspace/README.md` 和 `course-workspace/README.md`。
3. 你没有提交、推送、删除或修改课程内容。

最后用中文告诉我：

```text
个人 Obsidian 知识库：<绝对路径>
课程 workspace：<绝对路径>
下一步在 Obsidian 中打开：Projects/AI Agent Learning Workspace/pre-lite-workspace/README.md
```
