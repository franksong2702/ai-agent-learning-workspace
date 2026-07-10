# Unit 0：把课前准备变成可检查的事实

## 这个 Unit 在什么时候进行

打开公开 GitHub repo 并把课程 repo 放进 Obsidian 后，就可以在课前自行完成本页。不需要等待邀请。Codex 会协助检查电脑和安装两个入门 Skill。

线下课程开始时不会重新从零安装。第一步是老师和你一起验证：网页能打开、文件在正确位置、Codex 能读取、两个 Skill 确实可用。发现问题时现场补齐。

## 为什么先做这些

后面的课程会连续使用三样东西：

- GitHub 上的课程 repo：提供课程内容、提示词和演示入口。
- Obsidian：让课程文件和个人学习产物都能直接看见。
- Codex：读取说明、操作本地文件、使用 Skill 协助完成任务。

Unit 0 还会安装 `teach` 和 `aihot`。它们不是本单元要详细讲解的知识点，而是后面课程马上会用到的工具。8 个课程 Skill 的完整安排见 [课程 Skill 地图](../../../SKILLS.md)。

## 人做什么，Codex 做什么

| 事情 | 由谁完成 | 为什么 |
| --- | --- | --- |
| 打开三个公开 repo，登录自己的 GitHub 账号 | 你 | 阅读不需要邀请；登录用于后续 fork 和 Pull Request |
| 选择长期使用的 Obsidian Vault | 你确认 | Codex 不能替你决定个人知识库放在哪里 |
| 检查 repo 路径、远程地址和关键文件 | Codex 执行，你核对 | Codex 擅长检查，人要确认结果是不是自己看到的 |
| 安装 `teach`、`aihot` | Codex 执行，你允许 | Codex 按固定来源安装，不让人手工复制一堆文件 |
| 新开 Codex task，确认 Skill 可见 | 你操作，Codex 报告 | 新安装的 Skill 通常要在下一次 task 才会加载 |
| 判断结果是否真的符合预期 | 你 | 文件存在不等于自己已经理解或能使用 |

课程 repo 默认只读。个人检查报告写入自己的 Obsidian，不需要提交到 GitHub。

## 课前怎样完成

1. 在 Obsidian 左侧文件列表中打开本页。
2. 打开 [三个公开 Repo 检查](REPO-ACCESS.md)，确认进入 Unit 1 前都可以访问。
3. 打开 [给 Codex 的 Unit 0 准备提示词](PREPARE-WITH-CODEX.md)。
4. 先发送“第一段：检查与安装”，回答 Codex 对 Vault 路径的确认问题。
5. Codex 完成后，新开一个 Codex task。
6. 再发送“第二段：新 task 验证”，让它生成本地检查报告。
7. 在 Obsidian 中亲自打开检查报告，确认其中的路径与实际位置一致。

检查报告只保存在：

```text
<个人 Obsidian 知识库>/Learn/Agent 101/Unit 0/SETUP-REPORT.md
```

## 线下课程开始时怎样验证

老师会请你实际展示以下结果，而不是只听口头回答：

1. 在浏览器中打开三个公开课程 repo；不需要邀请。
2. 在 Obsidian 中打开本页，并说出课程 repo 的本地位置。
3. 让 Codex 报告当前 repo 的绝对路径和 GitHub 远程地址。
4. 打开 `SETUP-REPORT.md`，核对 `teach`、`aihot` 的本地路径。
5. 在新 Codex task 中确认这两个 Skill 都能被读取。
6. 用 `aihot` 查询一次最新 AI 资讯，确认结果带有来源链接；这只是工具确认，不展开 Unit 2 的文章编译流程。

`teach` 在 Unit 1 或 Unit 2 遇到真实概念问题时再使用。它会建立持续学习文件，所以只能在个人 `Learn/Agent 101/` 中运行，不要在课程 repo 中试运行。

## 什么算完成

- GitHub 网页可以打开 `ai-agent-learning-workspace`、`AI-Engineering-KnowledgeBase`、`ai-pet-demo` 三个公开 repo。
- 课程 repo 位于 `<个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/`，并能在 Obsidian 中打开。
- Codex 报告的本地绝对路径和 GitHub 远程地址与实际一致。
- `teach`、`aihot` 的安装目录中都存在 `SKILL.md`。
- 新 Codex task 能读取两个 Skill；`aihot` 的一次查询返回来源链接。
- `SETUP-REPORT.md` 位于个人 `Learn/Agent 101/Unit 0/`，课程 repo 没有被修改。

任一项不成立时，写成“需要协助”，并保留准确错误。不要为了让清单好看而写成已完成。

## 常见阻塞

- **公开 repo 打不开**：记录具体网址和浏览器错误，先检查网络；不等待邀请。
- **repo 不在 Obsidian 中**：回到 [workspace 安装提示词](../../../pre-lite-workspace/prompts/workspace-setup-prompt.md)，不要下载第二份。
- **同名 Skill 已经存在**：Codex 不覆盖，先报告现有路径和来源。
- **安装后新 task 看不到 Skill**：完全退出并重新打开 Codex 后再试；仍失败就记录为“需要协助”。
- **AI Hot 查询失败**：保留网址、命令或返回错误，课堂现场处理；不要编造查询结果。
