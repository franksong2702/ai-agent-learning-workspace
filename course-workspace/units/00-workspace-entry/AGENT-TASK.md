# Codex Task：Unit 0 课前准备与验证

## 目标

基于真实文件和网络结果，检查课程 repo、个人 Obsidian Vault 以及两个入门 Skill。只把个人检查报告写入个人 Obsidian；课程 repo 保持只读。

## 先读取

按顺序读取：

1. repo 根目录的 `SKILLS.md`
2. 本目录的 `STUDENT.md`
3. 本目录的 `REPO-ACCESS.md`
4. 本目录的 `PREPARE-WITH-CODEX.md`

Unit 0 只使用上面三份当前材料，不读取旧状态页或历史流程页。

## 前置

- 人能在网页中打开三个公开课程 repo；不需要 GitHub 邀请。
- 人已经确认一个长期使用的个人 Obsidian Vault 绝对路径。
- 课程 repo 已克隆到该 Vault 的 `Projects/AI Agent Learning Workspace/`。

缺少任一前置时，报告准确缺口并停止。不要替人登录账号、猜 Vault，或创建第二份 repo。

## 可以执行

1. 用只读命令检查 repo 根目录、`git remote -v` 和关键文件。
2. 使用 `git ls-remote` 或等价只读方式检查 `REPO-ACCESS.md` 中三个公开 repo；不需要访问令牌。
3. 检查 `teach`、`aihot` 是否已安装以及各自 `SKILL.md` 是否存在。
4. 同名目录不存在时，按 `PREPARE-WITH-CODEX.md` 的固定来源安装缺失项。
5. 安装后提醒人新开 Codex task；不要声称当前 task 已经重新加载新 Skill。
6. 在新 task 中读取两个 Skill，查询一次 AI Hot，并写个人 `SETUP-REPORT.md`。
7. 只创建缺失的个人报告目录，不改动其他个人文件。

## 不可以执行

- 不修改课程 repo 中的任何课程内容或状态文件。
- 不在课程 repo 中创建状态、身份或作业文件。
- 不 commit、不 push、不发送外部消息。
- 不覆盖已有同名 Skill；先报告现有路径和来源。
- 不把密码、验证码、Cookie、Token、API key 或付款信息写入文件或对话。
- 不在课程 repo 中运行 `teach`；它的持续学习工作区必须位于个人 `Learn/Agent 101/`。
- 不把文件存在说成 Skill 已在当前 task 中加载，也不把 API 失败写成查询成功。

## 报告位置

唯一输出是：

```text
<个人 Obsidian 知识库>/Learn/Agent 101/Unit 0/SETUP-REPORT.md
```

报告至少包含：

```markdown
# Unit 0 准备报告

## 路径
- 个人 Obsidian 知识库：
- 课程 repo：
- GitHub remote：

## Skill
| Skill | 状态 | 本地路径 | 来源检查 |
| --- | --- | --- | --- |
| teach | 已存在 / 本次安装 / 需要协助 | | |
| aihot | 已存在 / 本次安装 / 需要协助 | | |

## 三个公开 Repo
- AI Agent Learning Workspace：已验证 / 需要协助
- AI Engineering Knowledge Base：已验证 / 需要协助
- AI Pet Demo：已验证 / 需要协助

## 新 task 验证
- teach 可读取：已验证 / 需要协助
- aihot 可读取：已验证 / 需要协助
- AI Hot 查询：已验证 / 需要协助
- 查询中的一个来源链接：

## 需要协助
-
```

## 验证规则

- repo 路径必须来自本机，不从聊天内容猜测。
- remote 必须由 `git remote -v` 验证。
- Skill 状态必须由实际目录和 `SKILL.md` 验证。
- 新 task 可见性必须在安装后的新 task 中验证。
- AI Hot 结果必须来自真实查询并带来源链接。
- 三个 repo 的访问状态必须来自真实网页或远程读取，不从课程文字推断。
- 写完报告后重新打开并读取一次，确认路径和状态没有互相矛盾。
