# 角色和权限

## 人与 Codex

| 身份 | Codex | 可以决定 | 可以更新 | 必须先询问 |
| --- | --- | --- | --- | --- |
| 老师 | 老师的 Codex | 课程顺序、课堂边界和共享权限 | `CURRENT.md`、`TASKS.md`、`DECISIONS.md`、课程公共材料 | 外部发布、邀请、删除、commit 和 push |
| 第一个人 | 第一个人的 Codex | 自己的兴趣、选择和课堂提交 | `outputs/person-1/`、自己的加入申请和提案 | 修改共享状态、另一人的提交、外部发布 |
| 第二个人 | 第二个人的 Codex | 自己的兴趣、选择和课堂提交 | `outputs/person-2/`、自己的加入申请和提案 | 修改共享状态、另一人的提交、外部发布 |

## Codex 状态

| Codex | 代表 | Runtime | Mode | Shared write | Last proof |
| --- | --- | --- | --- | --- | --- |
| 老师的 Codex | 老师 | Codex | write-enabled | 本地课程准备 | 当前本地结构检查 |
| 第一个人的 Codex | 第一个人 | Codex | not-joined | none | pending |
| 第二个人的 Codex | 第二个人 | Codex | not-joined | none | pending |

## 通用规则

- 个人偏好不能自动升级成共同决定。
- 影响另一人的变化先写提案或询问。
- 账号、凭据、付款信息和私人原因不写入共享 repo。
- 只有老师或明确授权者可以改变共享权限、发布 repo 或关闭课程项目。
