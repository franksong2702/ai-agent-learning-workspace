# Unit 0：把课前准备变成可检查的事实

## 这个 Unit 在什么时候进行

本 Unit 分成两个阶段：

1. **课前自行完成**：打开三个公开 repo，把课程 repo 放进个人 Obsidian，安装并验证 `teach`、`aihot`，生成 `SETUP-REPORT.md`。不需要等待邀请。
2. **线下一起完成**：老师和你先验证课前结果，再现场安装 Claudian、选择 Codex，并生成 `CLAUDIAN-CHECK.md`。发现问题时记录准确错误，再决定现场修复或直接使用 Codex 继续。

线下不会把已经验证的课前步骤全部重做一遍。

## 为什么先做这些

后面的课程会连续使用三样东西：

- GitHub 上的课程 repo：提供课程内容、提示词和演示入口。
- Obsidian：让课程文件和个人学习产物都能直接看见。
- Codex：读取说明、操作本地文件、使用 Skill 协助完成任务。

Claudian 是 Obsidian 的第三方插件。它把 Codex 的对话入口放进 Obsidian，让“看笔记、请 Agent 处理、打开结果检查”发生在同一个界面里。它不是另一套知识库，也不是另一种模型；本课程仍统一使用 Codex。

Unit 0 还会安装 `teach` 和 `aihot`。它们不是本单元要详细讲解的知识点，而是后面课程马上会用到的工具。8 个课程 Skill 的完整安排见 [课程 Skill 地图](../../../SKILLS.md)。

## 人做什么，Codex 做什么

| 事情 | 由谁完成 | 为什么 |
| --- | --- | --- |
| 打开三个公开 repo，登录自己的 GitHub 账号 | 你 | 阅读不需要邀请；登录用于后续 fork 和 Pull Request |
| 选择长期使用的 Obsidian Vault | 你确认 | Codex 不能替你决定个人知识库放在哪里 |
| 检查 repo 路径、远程地址和关键文件 | Codex 执行，你核对 | Codex 擅长检查，人要确认结果是不是自己看到的 |
| 安装 `teach`、`aihot` | Codex 执行，你允许 | Codex 按固定来源安装，不让人手工复制一堆文件 |
| 新开 Codex task，确认 Skill 可见 | 你操作，Codex 报告 | 新安装的 Skill 通常要在下一次 task 才会加载 |
| 安装并启用 Claudian，选择 Codex | 你在线下操作，老师协助 | Obsidian 插件和 provider 选择需要人在界面中确认 |
| 用 Claudian 读 Unit 0、写个人检查文件 | Claudian 中的 Codex 执行，你打开文件核对 | Agent 负责操作，人负责确认界面和文件结果 |
| 判断结果是否真的符合预期 | 你 | 文件存在不等于自己已经理解或能使用 |

课程 repo 默认只读。个人检查报告写入自己的 Obsidian，不需要提交到 GitHub。

## 课前怎样完成

1. 在 Obsidian 左侧文件列表中打开本页。
2. 打开 [三个公开 Repo 检查](REPO-ACCESS.md)，确认进入 Unit 1 前都可以访问。
3. 点击下面“第一段”代码块右上角的复制按钮，把完整提示词发给 Codex。
4. 安装完成后，新开一个 Codex task。
5. 点击下面“第二段”代码块右上角的复制按钮，让新 task 验证 Skill 并生成检查报告。
6. 在 Obsidian 中亲自打开检查报告，确认其中的路径与实际位置一致。

## 一键复制给 Codex

### 第一段：检查与安装

```text
请帮我完成 Agent 101 的 Unit 0 课前准备。

先找到并读取课程 repo 中的：
- SKILLS.md
- course-workspace/units/00-workspace-entry/STUDENT.md
- course-workspace/units/00-workspace-entry/AGENT-TASK.md
- course-workspace/units/00-workspace-entry/REPO-ACCESS.md

请严格按以下顺序工作：
1. 请我确认长期使用的个人 Obsidian Vault 绝对路径。不要替我猜；我确认前不要写文件。
2. 检查课程 repo 是否位于 <个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/，并用 git remote -v 核对它指向 https://github.com/franksong2702/ai-agent-learning-workspace.git。
3. 按 REPO-ACCESS.md 只读检查三个公开 repo。不需要等待邀请，也不要索取访问令牌。
4. 检查 Codex 自带的 skill-installer，不要重复安装。
5. 检查 ~/.codex/skills/teach/。不存在时使用 skill-installer 从固定来源安装完整目录：https://github.com/mattpocock/skills/tree/main/skills/productivity/teach。已存在时不要覆盖，报告路径和来源。
6. 检查 ~/.codex/skills/aihot/。不存在时，先下载并阅读 https://aihot.virxact.com/aihot-skill/install.sh；只有确认它仅把 SKILL.md 和 README.md 写入指定目录、不使用 sudo、不修改其他位置后，才把 SKILL_DIR 设为 ~/.codex/skills/aihot 并执行。已存在时不要覆盖。
7. 检查两个目录中都存在 SKILL.md；teach 目录还应保留它引用的格式文件。
8. 不修改课程 repo，不 commit、push 或写入任何密钥。

完成后只报告：
- 个人 Obsidian 知识库绝对路径
- 课程 repo 绝对路径和 remote
- 三个公开 repo：都能访问 / 需要协助
- teach：已存在 / 本次安装 / 需要协助，实际路径
- aihot：已存在 / 本次安装 / 需要协助，实际路径
- 下一步：请我新开一个 Codex task，再使用本页“第二段：新 task 验证”
```

如果 Codex 报告同名目录冲突、网络失败或来源不一致，不要让它覆盖。保留准确错误，交给老师现场处理。

### 第二段：新 task 验证

```text
请验证 Agent 101 的 Unit 0 课前准备，不要重新安装任何东西。

1. 请我确认个人 Obsidian Vault 和课程 repo 的绝对路径。
2. 读取课程 repo 根目录的 SKILLS.md，以及 Unit 0 的 STUDENT.md、AGENT-TASK.md 和 REPO-ACCESS.md。
3. 验证当前 task 能读取 teach 和 aihot；只报告证据，不运行 teach，也不要在课程 repo 创建学习文件。
4. 使用 aihot 查询一次最新 AI 资讯，保留至少一个原始来源链接。不要展开文章编译、学习卡或 Pitch。
5. 把结果写到 <个人 Obsidian 知识库>/Learn/Agent 101/Unit 0/SETUP-REPORT.md；目录不存在时只创建缺失目录。
6. 重新打开报告，检查路径、remote、三个公开 repo、两个 Skill 状态、查询结果和需要协助项是否一致。
7. 不修改课程 repo，不 commit 或 push。

最后告诉我报告的绝对路径，并列出仍需要协助的项目。没有证据的项目保持“需要协助”。
```

检查报告只保存在：

```text
<个人 Obsidian 知识库>/Learn/Agent 101/Unit 0/SETUP-REPORT.md
```

## 线下安装并检查 Claudian

这部分在线下进行，不需要在课前自行折腾。Claudian 当前只支持桌面版 Obsidian，要求 Obsidian 1.7.2 或更高版本。课堂采用官方推荐的 Community Plugins 安装方式：

- [Claudian 官方 Obsidian 插件页](https://community.obsidian.md/plugins/realclaudian)
- [Claudian 官方 GitHub](https://github.com/YishenTu/claudian)

Claudian 可以读取、搜索和修改 Vault 文件，也可以调用命令。安装前先理解：它获得的是对个人知识库的真实操作能力；不要把密码、Token、API key 或其他秘密交给它。

### 人在 Obsidian 中操作

1. 确认使用桌面版 Obsidian，并在“帮助 -> 关于”查看版本；低于 1.7.2 时先升级。
2. 打开“设置 -> 第三方插件（Community plugins）-> 浏览（Browse）”。
3. 搜索 `Claudian`，点击安装并启用。课堂不默认从 GitHub 手工复制插件文件，也不从源码构建。
4. 打开 Claudian 设置，启用或选择 `Codex` provider。课堂不要改用其他 provider。
5. 从 Obsidian 左侧图标或命令面板打开 Claudian 聊天面板。
6. 确认界面当前显示的 provider 是 Codex，再复制下面的提示词。

### 第三段：Claudian 最小读写检查

```text
请在 Claudian 中完成 Agent 101 Unit 0 的最小读写检查。

1. 先请我在 Claudian 界面中确认当前 provider 显示为 Codex。没有得到我的确认前停止，不要仅凭自己的回答判断 provider。
2. 读取课程文件：Projects/AI Agent Learning Workspace/course-workspace/units/00-workspace-entry/STUDENT.md。
3. 只在个人学习区创建或更新：Learn/Agent 101/Unit 0/CLAUDIAN-CHECK.md。不要修改课程 repo。
4. 文件必须包含：检查时间、provider（写成“Codex，由我在界面确认”）、已读取的课程文件路径、写入结果、human_check: pending。
5. 写完后重新打开并读取该文件，核对路径和内容，再向我报告绝对路径。
6. 不 commit、不 push，不写入密码、Token、API key，不运行与本次检查无关的命令。

如果读取或写入失败，请保留原始错误，不要换成模糊描述，也不要把失败写成已验证。
```

最后亲自在 Obsidian 中打开 `CLAUDIAN-CHECK.md`。确认内容与实际一致后，把 `human_check` 改为 `confirmed`，或者明确告诉 Claudian 由它更新这一行。

如果 Claudian 无法连接 Codex：记录 Obsidian 版本、Claudian 界面显示的版本、当前 provider、准确错误，以及 Codex 本身是否可用。把 Claudian 项目写成“需要协助”，然后直接使用 Codex 操作同一个 Vault 继续课程。只有完成界面确认、读取和写入三项检查，才能写成“Claudian 已验证”。

## 线下课程开始时怎样验证

老师会请你实际展示以下结果，而不是只听口头回答：

1. 在浏览器中打开三个公开课程 repo；不需要邀请。
2. 在 Obsidian 中打开本页，并说出课程 repo 的本地位置。
3. 让 Codex 报告当前 repo 的绝对路径和 GitHub 远程地址。
4. 打开 `SETUP-REPORT.md`，核对 `teach`、`aihot` 的本地路径。
5. 在新 Codex task 中确认这两个 Skill 都能被读取。
6. 用 `aihot` 查询一次最新 AI 资讯，确认结果带有来源链接；这只是工具确认，不展开 Unit 2 的文章编译流程。
7. 在 Obsidian 中展示 Claudian 已启用且 provider 为 Codex。
8. 在 Claudian 中读取本页，写入个人 `CLAUDIAN-CHECK.md`，再亲自打开确认；失败时展示准确错误和直接使用 Codex 的降级路径。

`teach` 在 Unit 1 或 Unit 2 遇到真实概念问题时再使用。它会建立持续学习文件，所以只能在个人 `Learn/Agent 101/` 中运行，不要在课程 repo 中试运行。

## 什么算完成

- GitHub 网页可以打开 `ai-agent-learning-workspace`、`AI-Engineering-KnowledgeBase`、`ai-pet-demo` 三个公开 repo。
- 课程 repo 位于 `<个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/`，并能在 Obsidian 中打开。
- Codex 报告的本地绝对路径和 GitHub 远程地址与实际一致。
- `teach`、`aihot` 的安装目录中都存在 `SKILL.md`。
- 新 Codex task 能读取两个 Skill；`aihot` 的一次查询返回来源链接。
- `SETUP-REPORT.md` 位于个人 `Learn/Agent 101/Unit 0/`，课程 repo 没有被修改。
- Claudian 已在 Obsidian 中启用并由人确认 provider 为 Codex；它能读取 Unit 0 页面并写入个人 `CLAUDIAN-CHECK.md`，且 `human_check` 为 `confirmed`。

任一项不成立时，写成“需要协助”，并保留准确错误。Claudian 失败时可以直接使用 Codex 继续课程，但不能声称 Claudian 检查完成。不要为了让清单好看而写成已完成。

## 常见阻塞

- **公开 repo 打不开**：记录具体网址和浏览器错误，先检查网络；不等待邀请。
- **repo 不在 Obsidian 中**：回到 repo 根 [README](../../../README.md) 的第 2 步；那段提示词会先检查现状，已经安装时不会重复 clone。
- **同名 Skill 已经存在**：Codex 不覆盖，先报告现有路径和来源。
- **安装后新 task 看不到 Skill**：完全退出并重新打开 Codex 后再试；仍失败就记录为“需要协助”。
- **AI Hot 查询失败**：保留网址、命令或返回错误，课堂现场处理；不要编造查询结果。
- **搜索不到 Claudian**：确认使用桌面版 Obsidian 1.7.2+、第三方插件已允许且网络可访问官方插件页；仍失败就记录版本和界面状态。
- **Claudian 无法使用 Codex**：确认界面选择的是 Codex，并保留准确报错；不要改用另一套课堂工具，直接回到 Codex 操作同一个 Vault。
