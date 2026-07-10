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
- 讲师确认代表对象和修改范围后，才能改为 `write-enabled`。
- 完成同步、写入、验证和交接证明后，才能标记为 `activated`。

## 2026-07-10 D004: 课堂只公开必要协议

- 学生第一遍只接触 `CURRENT.md`、`TASKS.md`、`ROLES.md` 和自己的输出。
- 其他协议由讲师和 Agent 在需要时使用。
- 不在第一小时讲完整多 Agent 架构。
