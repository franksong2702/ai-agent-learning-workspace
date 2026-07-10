# Unit 1：Codex 执行任务

## 目标

读取一份轻量行为说明，接受人的自然语言委托，并只在对应的共享提交目录创建一份 `first-agent-note.md`。文件必须由人实际打开检查后，才能报告完成。

## 前置

- Unit 0 已确认当前 repo 的真实绝对路径。
- 当前 Codex 自己的加入申请已有老师填写的确认记录，批准模式为 `write-enabled`，写入范围包含对应的 `outputs/person-N/`。
- 人已明确当前 Codex 代表第一个人或第二个人。
- `course-workspace/ROLES.md` 中的身份与 `course-workspace/outputs/person-1/` 或 `course-workspace/outputs/person-2/` 已对应清楚。
- 人已同意开始这个小任务。

任一前置不成立时，先进入“降级路径”。

## 允许动作

1. 读取 `course-workspace/ROLES.md`、`course-workspace/units/01-agent-behavior-guide/STUDENT.md` 和 `course-workspace/units/01-agent-behavior-guide/templates/AGENT-BEHAVIOR-GUIDE.md`。
2. 用一句话确认目标文件和完成标准；自然语言要求确实不清楚时，只问一个最小必要问题。
3. 读取 `course-workspace/units/01-agent-behavior-guide/templates/FIRST-AGENT-NOTE.md`，根据人刚才表达的目标生成四个短小节。
4. 只创建当前身份对应的 `first-agent-note.md`。
5. 用文件存在性检查验证写入结果，并报告验证命令、返回结果和证据路径。
6. 请人实际打开文件；如果人指出内容不符合原意，只修改这一份文件。

## 禁止动作

- 不修改 repo 根目录或其他目录中的 `AGENTS.md`。
- 不修改行为说明模板或课堂记录模板。
- 不写入另一人的 `outputs/`，不修改 `CURRENT.md`、`TASKS.md`、`DECISIONS.md` 或 `ROLES.md`。
- 不扩展到后续单元的知识库编译、知识卡或自动化内容。
- 不额外生成摘要、教程、项目计划或其他共享文件。
- 不 commit、不 push、不删除文件、不发送外部消息。
- 不写入密码、验证码、API Key、Cookie、Token、付款信息或私人原因。
- 目标文件已经存在时不覆盖，先让人决定是检查现有文件还是修改它。

## 输出

二选一，只能创建与当前身份对应的文件：

- `course-workspace/outputs/person-1/first-agent-note.md`
- `course-workspace/outputs/person-2/first-agent-note.md`

内容使用 `course-workspace/units/01-agent-behavior-guide/templates/FIRST-AGENT-NOTE.md` 的四个小节，保持简短，并使用人刚才表达的意思。

完成报告使用以下格式：

```text
验证命令：test -f '<实际文件绝对路径>'
返回结果：<exit code 和关键结果>
证据路径：<实际文件绝对路径>
```

## 人工检查

请对应的人在 Obsidian 或文件管理器中打开实际文件，核对路径、四个小节和内容原意。只有人明确确认文件存在、可读、位置正确，才能报告本单元完成。

## 降级路径

- 身份或输出目录不明确：请人确认是第一个人还是第二个人，得到答复前不写文件。
- 行为说明或课堂记录模板缺失：报告缺失的准确路径，不在其他位置自造替代文件。
- 无法写入目标目录：在对话中给出拟写内容和准确错误，不声称文件已创建。
- 目标文件已经存在：不覆盖；请人先打开检查，再决定是否允许修改。
- 人暂时无法打开文件：保留为“等待人工检查”，不能报告完成。
