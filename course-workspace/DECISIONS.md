# 课程决策

## 2026-07-10 D001: 同一个学习 repo 贯穿课前与课堂

- `pre-lite-workspace/` 负责课前准备。
- `course-workspace/` 负责正式课堂。
- 内容可以随课程推进更新，但 repo 身份保持不变。

## 2026-07-10 D002: 学习 Workspace 与代码 repo 分开

- 本 repo 是课程地图、任务、提示词、记录和协作状态。
- 网页宠物代码放在独立 `ai-pet-demo` repo。
- API Key 只保存在代码 repo 的本机环境文件中，不进入本 repo。

## 2026-07-10 D003: Agent 加入不等于获得共享写入权限

- 新 Agent 默认从 `proposal-only` 开始。
- 老师确认代表对象和修改范围后，才能改为 `write-enabled`。
- 完成同步、写入、验证和交接证明后，才能标记为 `activated`。

## 2026-07-10 D004: 课堂只公开必要协议

- 你第一遍只接触 `CURRENT.md`、`TASKS.md`、`ROLES.md` 和自己的输出。
- 其他协议由老师和 Agent 在需要时使用。
- 不在第一小时讲完整多 Agent 架构。

## 2026-07-10 D005: 邀请前只发送一份外部清单

- 邀请前的课前确认清单由老师单独发送，不要求先进入 private repo。
- GitHub、Obsidian 和其他陌生概念的 Codex 解释提示词都放在该清单附录。
- 接受邀请后，private repo 的第一个入口固定为 `pre-lite-workspace/README.md`。

## 2026-07-10 D006: 课堂使用的工具统一为 Codex

- 课堂文档和加入协议只要求 Codex，不同时列出多种工具。
- Agent 仍是课程概念；Codex 是本次课程实际使用的工具。

## 2026-07-10 D007: 个人知识与共享提交分开

- `Learn/Wiki/` 保存个人 Wiki 编译产物和学习卡。
- `Learn/Agent 101/` 保存个人课程笔记、反思和 Skill 练习。
- `course-workspace/outputs/` 只保存课堂要求共享和检查的提交，不复制完整个人笔记。

## 2026-07-10 D008: 学习 repo 与网页宠物代码 repo 同时准备

- 本 repo 完成 Unit 0-5 的课堂任务、Codex 指令和协作状态。
- 独立 `ai-pet-demo` 保存网页、pet/skin、气泡、mock 与 DeepSeek adapter。
- 现有 `agent101-companion-foundation` 只作为迁移来源，不在原 repo 中继续开发。

## 2026-07-10 D009: 三个课程 Repo 改为公开访问

- `ai-agent-learning-workspace`、`AI-Engineering-KnowledgeBase`、`ai-pet-demo` 当前均为 `PUBLIC`，不再发送阅读或 clone 邀请。
- 进入 Unit 1 前必须实际确认三个 repo 页面可打开；学习 repo 还要已 clone 到个人 Obsidian。
- 公开不等于可以向老师 repo push。Unit 4 默认使用个人 fork、branch 和 Pull Request，不依赖 collaborator 邀请。
- D003、D004、D005、D007 中关于 Agent 权限审批、private 邀请和强制共享提交的内容不再作为当前课程入口合同。
- 个人学习产物继续写入个人 Obsidian；课程 repo 默认只读。
