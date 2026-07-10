# Unit 0：Codex 执行任务

## 目标

基于实际访问和本地文件证据，确认课程 Workspace 路径，并让老师的 Codex、第一个人的 Codex、第二个人的 Codex 依次完成各自的加入步骤。不得把“能读取 repo”或“已创建申请”报告成“已经加入”。

## 前置

- 人已说明当前 Codex 代表老师、第一个人还是第二个人。
- 代表第一个人或第二个人时，人已确认 GitHub 邀请确实接受且 private repo 可以打开。
- 个人 Obsidian 知识库的实际路径已由人确认；新建知识库时默认使用 `~/Obsidian/`。
- 当前目录是课程 repo 的真实本地副本，而不是临时下载目录或聊天中的假定路径。

任一前置不成立时，进入“降级路径”，不要继续写文件。

## 允许动作

1. 用只读命令确认 repo 根目录、当前 remote 和关键文件是否存在。
2. 依次读取根 `AGENT-START-HERE.md`、`course-workspace/AGENT-START-HERE.md`、`course-workspace/JOIN.md`、`course-workspace/ROLES.md`、`course-workspace/CURRENT.md` 和 `course-workspace/TASKS.md`。
3. 报告实际 repo 绝对路径，并请人确认它位于个人知识库的 `Projects/AI Agent Learning Workspace/`。
4. 根据 `course-workspace/JOIN.md` 和 `course-workspace/inbox/joins/TEMPLATE.md`，只创建当前 Codex 自己的加入申请。
5. 指出当前身份对应的 `outputs/person-N/`，并请人实际打开检查。
6. 创建申请后停止，等待老师确认；下一台 Codex 只在上一份申请已被人检查后开始。

## 禁止动作

- 不执行 GitHub 邀请，不声称邀请已经发送或接受。
- 不代替其他 Codex 创建加入申请或占位文件。
- 不修改 `CURRENT.md`、`TASKS.md`、`DECISIONS.md`、`ROLES.md` 或另一人的输出。
- 不 commit、不 push、不删除文件、不发送外部消息。
- 不写入密码、验证码、API Key、Cookie、Token、付款信息或私人原因。
- 不把本地文件存在、repo 可读或申请已创建当成远端同步、权限确认或三 Codex 加入完成的证据。

## 输出

只在对应 Codex 真实执行时创建其中一个文件：

- 老师的 Codex：`course-workspace/inbox/joins/teacher-agent.md`
- 第一个人的 Codex：`course-workspace/inbox/joins/person-1-agent.md`
- 第二个人的 Codex：`course-workspace/inbox/joins/person-2-agent.md`

不要提前创建另外两份文件。完成后在对话中报告：

```text
实际 repo 路径：<绝对路径>
当前代表：<老师 / 第一个人 / 第二个人>
已读取：<实际打开的关键文件>
自己的共享提交目录：<实际目录>
加入进度：<尚未申请 / 已提交申请，等待老师确认 / 已由老师确认>
```

## 人工检查

老师逐份打开真实存在的加入申请，核对身份、读取结果和申请权限。对应的人还要在 Obsidian 中打开 `CURRENT.md`、`TASKS.md`、`ROLES.md` 和自己的共享提交目录。

只有三份申请分别由对应 Codex 创建、每份“老师确认”字段均由老师填入确认人、时间、批准模式、写入范围和读取证据，而且三边都能读取同一组当前文件时，才能报告本单元完成。

## 降级路径

- 邀请未接受或 private repo 无法打开：报告准确阻塞点，停止；不创建申请。
- repo 未安装到个人知识库：回到 `pre-lite-workspace/prompts/workspace-setup-prompt.md`，由人先确认知识库绝对路径。
- 只有本地文件、暂时不能同步：允许做只读定位并报告“仅本地确认”，不能报告加入完成。
- 当前身份或输出目录不明确：请人选择老师、第一个人或第二个人，得到答复前不写文件。
- 某一台 Codex 不可用：保留该项未完成，其他 Codex 不代写。
