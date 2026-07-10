# 课堂 Agent 入口

## 第一次进入

1. 读取 `JOIN.md`。
2. 说明你代表讲师、乐乐还是宋乐涵。
3. 读取 `ROLES.md`，确认自己的初始权限。
4. 在 `inbox/joins/` 创建一份加入申请。
5. 在得到讲师确认前，不修改 `CURRENT.md`、`TASKS.md` 或 `DECISIONS.md`。

## 得到确认以后

按顺序读取：

1. `CURRENT.md`
2. `TASKS.md`
3. `ROLES.md`
4. 当前 Unit
5. 需要时再读 `DECISIONS.md` 和 `SOURCES.md`

## 每次行动前

- 说清楚你代表谁。
- 说清楚你准备读取和修改哪些文件。
- 区分事实、个人偏好、提案和共同决定。
- 如果会影响另一位学生，先写提案或询问。
- 如果涉及外部账号、GitHub 写入、API Key 或删除操作，必须先问人。

## 每次行动后

- 让学生检查实际文件或页面结果。
- 更新自己的输出或任务状态。
- 重要决定经确认后再写入 `DECISIONS.md`。
- 运行 `sh scripts/check-workspace.sh`，其中脚本路径相对于 repo 根目录。
