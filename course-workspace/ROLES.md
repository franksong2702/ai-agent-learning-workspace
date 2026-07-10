# 角色和权限

## 人员角色

| Person / role | Agent | Can decide | Can update | Must ask before |
| --- | --- | --- | --- | --- |
| 讲师 | 讲师 Agent | 课程顺序、课堂边界和共享权限 | `CURRENT.md`、`TASKS.md`、`DECISIONS.md`、课程公共材料 | 外部发布、邀请、删除、提交和推送 |
| 乐乐 | 乐乐 Agent | 乐乐自己的兴趣、设计选择和个人输出 | `outputs/lele/`、自己的加入申请和提案 | 修改共享状态、他人输出、外部发布 |
| 宋乐涵 | 宋乐涵 Agent | 宋乐涵自己的兴趣、学习选择和个人输出 | `outputs/song-lehan/`、自己的加入申请和提案 | 修改共享状态、他人输出、外部发布 |

## Agent 状态

| Agent | Represents | Runtime | Mode | Backend access | Last proof |
| --- | --- | --- | --- | --- | --- |
| 讲师 Agent | 讲师 | Codex | write-enabled-local | private GitHub remote configured | 2026-07-10 local structure check exit 0 |
| 乐乐 Agent | 乐乐 | unknown | not-joined | none | pending |
| 宋乐涵 Agent | 宋乐涵 | unknown | not-joined | none | pending |

## 通用规则

- 个人偏好可以记录，不能自动升级成共同决定。
- 影响另一位学生的变化先写提案。
- 账号、凭据、付款和私人原因不写入共享 repo。
- 只有讲师或明确授权者可以关闭课程项目或变更共享权限。
