# AI Agent Learning Workspace Rules

本 repo 是课程学习与协作现场，不是网页宠物代码仓库。

## 开始前读取

1. `README.md`
2. `AGENT-START-HERE.md`
3. `course-workspace/ROLES.md`
4. `course-workspace/CURRENT.md`
5. `course-workspace/TASKS.md`

如果是课前准备，只读取 `pre-lite-workspace/`。

## 写入边界

- 未完成加入流程时，只能在 `course-workspace/inbox/joins/` 创建加入申请。
- `proposal-only` Agent 只能写自己的提案、加入申请和个人输出草稿。
- `write-enabled` Agent 只能修改 `ROLES.md` 明确授权的文件。
- `CURRENT.md` 只记录已经确认的当前事实。
- `DECISIONS.md` 只记录经过有权人确认的选择。
- 不修改他人的个人输出文件。
- 不把聊天内容整段写入 repo。

## 安全边界

- 不写入密码、验证码、API Key、Cookie、Token、私钥或付款信息。
- 不执行删除、提交、推送、邀请成员或外部发消息，除非人明确批准。
- 遇到权限不清、事实冲突或多人决定时，写成提案并停下来询问。

## 课程边界

- 学习 Workspace 是地图和协作状态。
- `ai-pet-demo` 是独立代码 repo。
- 学生可见材料使用自然语言，不使用项目内部测试状态术语。
- 每个 Unit 都要留下可检查文件，并由学生参与至少一次判断。

## 验证

修改共享结构后运行：

```bash
sh scripts/check-workspace.sh
```
