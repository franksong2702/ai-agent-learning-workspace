# Agent 加入 Workspace

## 给人看的说明

三个 Agent 会一个一个加入：

1. 讲师 Agent 先进入并确认 Workspace 状态。
2. 乐乐的 Agent 加入，说明它代表乐乐。
3. 宋乐涵的 Agent 加入，说明它代表宋乐涵。

Agent 第一次加入时只能提交加入申请。讲师确认它代表谁、能看到哪些文件、允许改哪些内容之后，它才能更新共享状态。

## 给 Agent 的指令

把下面内容发给正在加入的 Agent，并替换方括号内容：

```text
你正在加入 AI Agent 101 课程的共享学习 Workspace。

你代表：[讲师 / 乐乐 / 宋乐涵]
你的运行工具：[Codex / Claude Code / Hermes / 其他]

请先读取：
1. AGENT-START-HERE.md
2. course-workspace/AGENT-START-HERE.md
3. course-workspace/ROLES.md
4. course-workspace/CURRENT.md

先不要修改 CURRENT.md、TASKS.md 或 DECISIONS.md。

请根据 course-workspace/inbox/joins/TEMPLATE.md，创建一份加入申请，文件名使用：
course-workspace/inbox/joins/[代表对象]-agent.md

加入申请要说明：
- 你代表谁
- 你使用什么 Agent 工具
- 你能否读取 repo
- 你能否写入本地文件
- 你目前申请的权限
- 你需要讲师确认什么

不要写入密码、Token、Cookie、API Key 或本机凭据路径。
完成加入申请后停下来，等待讲师确认。
```
