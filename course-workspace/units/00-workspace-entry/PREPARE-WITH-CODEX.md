# 给 Codex 的 Unit 0 准备提示词

这页分成两段。第一段在当前 Codex task 中检查和安装；安装后新开一个 task，再发送第二段做验证。

## 第一段：检查与安装

把下面整段发给 Codex：

```text
请帮我完成 Agent 101 的 Unit 0 课前准备。

先找到并读取课程 repo 中的：
- SKILLS.md
- course-workspace/units/00-workspace-entry/STUDENT.md
- course-workspace/units/00-workspace-entry/AGENT-TASK.md
- course-workspace/units/00-workspace-entry/REPO-ACCESS.md

请严格按以下顺序工作：

1. 请我确认长期使用的个人 Obsidian Vault 绝对路径。不要替我猜；我确认前不要写文件。
2. 检查当前课程 repo 是否位于：
   <个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/
   并用 git remote -v 核对它指向：
   https://github.com/franksong2702/ai-agent-learning-workspace.git
3. 按 REPO-ACCESS.md 只读检查三个公开 repo。不需要等待邀请，也不要索取访问令牌。
4. 检查 Codex 是否已有 skill-installer。它是 Codex 自带 Skill，不要重复安装。
5. 检查 ~/.codex/skills/teach/ 是否存在。不存在时，使用 skill-installer 从固定来源安装完整目录：
   https://github.com/mattpocock/skills/tree/main/skills/productivity/teach
   已存在时不要覆盖，报告路径和来源。
6. 检查 ~/.codex/skills/aihot/ 是否存在。不存在时：
   a. 下载并先阅读 https://aihot.virxact.com/aihot-skill/install.sh；
   b. 只有确认它把 SKILL.md 和 README.md 写入指定目录、不使用 sudo、不修改其他位置后，才把 SKILL_DIR 设为 ~/.codex/skills/aihot 并执行；
   c. 已存在时不要覆盖，报告路径和来源。
7. 检查两个目录中都存在 SKILL.md；teach 目录还应保留它引用的格式文件。
8. 不要修改课程 repo，不要 commit、push 或写任何密钥。

完成后只报告：
- 个人 Obsidian 知识库绝对路径
- 课程 repo 绝对路径和 remote
- 三个公开 repo：都能访问 / 需要协助
- teach：已存在 / 本次安装 / 需要协助，实际路径
- aihot：已存在 / 本次安装 / 需要协助，实际路径
- 下一步：请我新开一个 Codex task，并发送“第二段：新 task 验证”
```

如果 Codex 报告同名目录冲突、网络失败或来源不一致，不要让它覆盖。把准确错误留给老师现场处理。

## 第二段：新 task 验证

安装完成后，新开一个 Codex task，把下面整段发给它：

```text
请验证 Agent 101 的 Unit 0 课前准备，不要重新安装任何东西。

1. 请我确认个人 Obsidian Vault 和课程 repo 的绝对路径。
2. 读取课程 repo 根目录的 SKILLS.md，以及 Unit 0 的 STUDENT.md、AGENT-TASK.md 和 REPO-ACCESS.md。
3. 验证当前 task 能读取 teach 和 aihot；只报告证据，不运行 teach，也不要在课程 repo 中创建学习文件。
4. 使用 aihot 查询一次最新 AI 资讯，保留至少一个原始来源链接。不要展开文章编译、学习卡或 Pitch。
5. 把结果写到：
   <个人 Obsidian 知识库>/Learn/Agent 101/Unit 0/SETUP-REPORT.md
   目录不存在时只创建缺失目录。
6. 重新打开报告，检查路径、remote、三个公开 repo、两个 Skill 状态、查询结果和需要协助项是否一致。
7. 不要修改课程 repo，不要 commit 或 push。

最后告诉我报告的绝对路径，并列出仍需要协助的项目。没有证据的项目保持“需要协助”。
```
