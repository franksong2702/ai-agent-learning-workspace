# AI Agent 学习 Workspace

这是两天 Agent 101 课程使用的公开学习 repo。第一次进入时只按本页从上到下做，不要先打开其他文件。

## 第 1 步：先确认三项前置条件

开始前必须已经完成：

1. Codex 能正常对话。
2. GitHub 能登录，并能打开本 repo。
3. Obsidian 已安装，且已经创建或打开一个会长期使用的个人 Vault。

如果任一项还没有完成，先停在这里，回到老师发出的《Agent 101 课前确认清单》。不要让 Codex 创建普通文件夹冒充 Obsidian Vault。

## 第 2 步：一键复制给 Codex，准备 workspace

不需要自己判断“是否已经安装”。点击下面代码块右上角的复制按钮，把完整内容发给 Codex。它会先检查：已经安装就不重复 clone；没有安装才 clone；同名目录有冲突就停下报告。

```text
我正在准备 Agent 101 课程。请帮我检查并准备 AI Agent Learning Workspace。

请严格按以下顺序工作：

1. 先查找这台电脑上现有的 Obsidian Vault。Vault 是长期使用的个人知识库，不是课程专用文件夹。
2. 如果只找到一个 Vault，告诉我它的绝对路径并问我是否确认；如果找到多个，让我选择；如果没有找到，说明前置条件缺失并停下，不要创建普通文件夹冒充 Vault。
3. 在我确认 Vault 前，不创建课程目录、不下载仓库。
4. 确认后，只创建缺失目录：Inbox/、Learn/Wiki/、Learn/Agent 101/、Projects/、Work/、Diary/；不改动已有内容。
5. 课程 repo 的唯一位置是：
   <个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/
   不要放进 Learn/Agent 101/、桌面、下载文件夹或 ~/Projects/。
6. 仓库地址是：
   https://github.com/franksong2702/ai-agent-learning-workspace.git
7. 检查目标目录：
   - 如果不存在，才 clone。
   - 如果已经是同一仓库，不重复 clone。先运行 git status；有本地修改就停止并报告，工作树干净时使用 git pull --ff-only 更新。
   - 如果目录存在但不是同一仓库，或里面已有其他文件，不覆盖、不删除、不换位置，报告后停下。
8. 检查 remote，以及根 README.md、SKILLS.md、course-workspace/README.md 是否存在。
9. 不提交、推送、删除或修改课程内容。报错时告诉我准确错误和下一步最小操作。
10. 不索取密码、验证码、Token、API key 或付款信息。

最后按下面格式报告：
个人 Obsidian 知识库：<绝对路径>
课程 workspace：<绝对路径>
remote：<实际地址>
更新结果：本次 clone / 已存在并更新 / 需要协助
Obsidian 左侧能看到根 README.md：已确认 / 需要协助
需要协助：
-
```

## 第 3 步：只检查结果，不要重复安装

Codex 完成后，自己确认三件事：

1. Obsidian 左侧能打开本 repo 的根 `README.md`。
2. Codex 报告的位置是 `<个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/`。
3. remote 是 `https://github.com/franksong2702/ai-agent-learning-workspace.git`。

如果第 2 步已经完成，**不要再次复制第 2 步的提示词，不要再次 clone**。以后回到本页时直接从第 4 步继续。

把下面结果发给老师：

```text
个人 Obsidian 知识库：
课程 workspace：
Obsidian 中已找到根 README：已完成 / 需要协助
需要协助：
-
```

## 第 4 步：进入 Unit 0

完成上面三步后，只打开 [Unit 0：课前准备与验证](course-workspace/units/00-workspace-entry/STUDENT.md)。Unit 0 页面会直接提供下一段可一键复制给 Codex 的提示词。

Unit 0 完成后停下。线下课程开始时，老师会先验证真实结果，再进入 Unit 1。

## 后面会用到的三个公开 Repo

1. [AI Agent Learning Workspace](https://github.com/franksong2702/ai-agent-learning-workspace)：本课程入口。
2. [AI Engineering Knowledge Base](https://github.com/franksong2702/AI-Engineering-KnowledgeBase)：课程定向引用的 AI 工程知识。
3. [AI Pet Demo](https://github.com/franksong2702/ai-pet-demo)：Unit 4 使用的网页开发脚手架。

公开只代表可以阅读和 clone，不代表可以直接向老师 repo push。课程 repo 默认只读；个人笔记写入个人 Obsidian `Learn/`，网页代码写入独立的 `ai-pet-demo` repo。

当前仍未验证真实电脑上的课前准备、Unit 0、fork / Pull Request 或真实课堂结果。
