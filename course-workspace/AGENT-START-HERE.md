# 课堂 Codex 入口

## 第一次进入

1. 读取 `JOIN.md`。
2. 说明你代表老师、第一个人还是第二个人。
3. 读取 `ROLES.md`，确认自己的初始权限。
4. 在 `inbox/joins/` 创建一份加入申请。
5. 在得到老师确认前，不修改 `CURRENT.md`、`TASKS.md` 或 `DECISIONS.md`。

## 得到确认以后

按顺序读取：

1. `CURRENT.md`
2. `TASKS.md`
3. `ROLES.md`
4. 当前 Unit
5. 需要时再读 `DECISIONS.md` 和 `SOURCES.md`

如果老师已经明确说开始课堂，但没有点名 Unit，当前 Unit 默认为 `units/00-workspace-entry/`。Unit 0 没有老师确认记录时，不进入 Unit 1。

## 每次行动前

- 说清楚你代表谁。
- 说清楚你准备读取和修改哪些文件。
- 区分事实、个人偏好、提案和共同决定。
- 如果会影响另一个人，先写提案或询问。
- 如果涉及外部账号、GitHub 写入、API Key 或删除操作，必须先问人。

## 每次行动后

- 让对应的人检查实际文件或页面结果。
- 只更新授权范围内的课堂提交或任务状态；个人完整笔记留在 Obsidian `Learn/` 中。
- 重要决定经确认后再写入 `DECISIONS.md`。
- 运行 `sh scripts/check-workspace.sh`，其中脚本路径相对于 repo 根目录。
