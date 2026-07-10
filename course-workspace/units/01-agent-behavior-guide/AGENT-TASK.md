# Codex Task：Unit 1 行为说明与自然语言委托

## 目标

读取课程提供的轻量行为说明，接受人的自然语言委托，只在个人 Obsidian 中创建一份短记录，并由人实际打开和修订。

## 前置

- Unit 0 的 `SETUP-REPORT.md` 可以打开。
- `course-workspace/units/00-workspace-entry/REPO-ACCESS.md` 中三个公开 repo 已实际验证。
- 人已确认个人 Obsidian Vault 和课程 repo 的绝对路径。
- 人同意开始这个小任务。

任一前置不成立时，报告准确缺口，不写文件。

## 先读取

1. `course-workspace/units/01-agent-behavior-guide/STUDENT.md`
2. `course-workspace/units/01-agent-behavior-guide/templates/AGENT-BEHAVIOR-GUIDE.md`
3. `course-workspace/units/01-agent-behavior-guide/templates/FIRST-AGENT-NOTE.md`

## 执行

1. 先确认唯一目标文件：

```text
<个人 Obsidian 知识库>/Learn/Agent 101/Unit 1/FIRST-AGENT-NOTE.md
```

2. 用一句话复述人的自然语言目标；确实不清楚时只问一个最小问题。
3. 只创建缺失的个人 `Unit 1/` 目录，根据模板写四个短小节。
4. 重新打开文件，检查内容和路径。
5. 请人实际打开；人指出问题后，只修改指定部分，再次读取确认。

## 边界

- 不修改课程 repo、行为说明模板或课堂记录模板。
- 不在课程 repo 创建额外状态或 GitHub 作业文件。
- 不 commit、不 push、不 fork、不创建 Pull Request、不发送外部消息。
- 不扩展到知识库编译、网页开发或后续 Unit。
- 不写入密码、验证码、API key、Cookie、Token、付款信息或私人原因。
- 目标文件已经存在时不覆盖，先让人决定检查还是修改。

## 验证

```text
验证命令：test -f '<个人 Obsidian 知识库>/Learn/Agent 101/Unit 1/FIRST-AGENT-NOTE.md'
返回结果：<exit code 和关键结果>
证据路径：<实际绝对路径>
人工检查：已确认 / 等待检查 / 需要修改
```

只有文件存在、路径正确，并且人打开检查过，才能报告本单元完成。
