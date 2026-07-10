# AI Agent Learning Workspace Rules

本 repo 是 Agent 101 的公开课程材料与 Codex 提示词入口，默认只读。它不是加入审批系统、作业提交区或网页宠物代码仓库。

## 先判断当前场景

任何场景都先读取：

1. `README.md`
2. `AGENT-START-HERE.md`

然后按入口继续：

- 刚在 GitHub 打开 repo：读取 `pre-lite-workspace/README.md` 和其中点名的安装提示词。
- repo 已在个人 Obsidian 中：读取课前确认清单、`SKILLS.md` 和 Unit 0 材料。
- 已开始课堂：读取 `course-workspace/AGENT-START-HERE.md`、`SKILLS.md`，再读取当前 Unit 的 `STUDENT.md` 和 `AGENT-TASK.md`。

早期加入页、角色页、旧状态页和历史日志即使仍存在，也不属于当前课程入口，不得覆盖当前 Unit。

## 人与 Codex 怎样分工

- 先让人阅读当前 Unit 的 `STUDENT.md`，理解目标、步骤和需要亲自判断的结果。
- Codex 再读取同目录的 `AGENT-TASK.md`，只执行其中明确交给 Codex 的部分。
- Codex 行动前说明准备读取什么、修改什么、产物写到哪里；行动后报告实际路径和验证结果。
- 账号登录、兴趣选择、是否接受结果和最终决定由人完成，Codex 不替人判断。

## 写入边界

- 课程 repo 默认只读。除非老师在当前对话中明确要求，不在这里创建个人作业、管理申请、角色状态或课程进度。
- 个人笔记、学习卡、Pitch、检查报告和 Skill 练习写入个人 Obsidian 的 `Learn/Agent 101/`。
- 本 repo 的本地副本放在个人 Obsidian 的 `Projects/AI Agent Learning Workspace/`；不要把课程 repo clone 到 `Learn/Agent 101/`。
- 网页宠物代码写入独立的 `ai-pet-demo` repo，不复制进本 repo。
- Unit 4 使用个人 fork：`origin` 指向个人 fork，老师的公开 repo 作为 `upstream`。未经明确确认，不 commit、push 或创建 Pull Request。
- 不把整段聊天记录、私人笔记或其他人的内容写入课程 repo。

## 安全与执行边界

- 不读取、记录或展示密码、验证码、API Key、Cookie、Token、私钥或付款信息。
- `.env.local` 只留在本机代码 repo，不写入聊天、Markdown 或 Git。
- 不执行删除、覆盖、commit、push、邀请成员、创建 Pull Request 或外部发消息，除非人明确批准。
- 执行文件或 Git 操作前，先确认真实绝对路径和 `git status`；不要从聊天猜路径。
- 遇到事实冲突时，按“当前对话明确要求 -> 当前 Unit 的 `STUDENT.md` -> 当前 Unit 的 `AGENT-TASK.md` -> `SKILLS.md` -> 其他参考材料”的顺序处理。

## 验证与报告

修改本课程 repo 后运行：

```bash
sh scripts/check-workspace.sh
```

报告必须写明实际执行的命令、结果和产物路径。没有真实证据时，保留为“未验证”或“需要协助”；材料存在不等于 Unit 0、真实 API、GitHub 协作或真实课堂已经完成。
