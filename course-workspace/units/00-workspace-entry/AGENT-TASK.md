# Codex Task：Unit 0 课前准备与验证

## 目标

基于真实文件、网络结果和人的界面确认，检查课程 repo、个人 Obsidian Vault、两个入门 Skill，以及线下安装的 Claudian。所有个人检查结果写入个人 Obsidian；课程 repo 保持只读。

## 先读取

按顺序读取：

1. repo 根目录的 `SKILLS.md`
2. 本目录的 `STUDENT.md`
3. 本目录的 `REPO-ACCESS.md`

Unit 0 只使用上面三份当前材料，不读取旧状态页或历史流程页。

## 前置

- 人能在网页中打开三个公开课程 repo；不需要 GitHub 邀请。
- 人已经确认一个长期使用的个人 Obsidian Vault 绝对路径。
- 课程 repo 已克隆到该 Vault 的 `Projects/AI Agent Learning Workspace/`。

Claudian 不是课前硬前置。它在线下由人从 Obsidian Community Plugins 安装、启用，并在界面中选择 Codex provider；Codex 不替人点击、猜测或声称完成这些界面操作。

缺少任一前置时，报告准确缺口并停止。不要替人登录账号、猜 Vault，或创建第二份 repo。

## 可以执行

1. 用只读命令检查 repo 根目录、`git remote -v` 和关键文件。
2. 使用 `git ls-remote` 或等价只读方式检查 `REPO-ACCESS.md` 中三个公开 repo；不需要访问令牌。
3. 检查 `teach`、`aihot` 是否已安装以及各自 `SKILL.md` 是否存在。
4. 同名目录不存在时，按根 `SKILLS.md` 的固定来源安装缺失项：
   - `teach` 使用 `skill-installer` 从 `https://github.com/mattpocock/skills/tree/main/skills/productivity/teach` 安装完整目录。
   - `aihot` 先读取 `https://aihot.virxact.com/aihot-skill/install.sh`；只有确认它不使用 `sudo`、不修改指定 Skill 目录之外的位置，才将目标设为 `~/.codex/skills/aihot/` 后执行。
5. 安装后提醒人新开 Codex task；不要声称当前 task 已经重新加载新 Skill。
6. 在新 task 中读取两个 Skill，查询一次 AI Hot，并写个人 `SETUP-REPORT.md`。
7. 只创建缺失的个人报告目录，不改动其他个人文件。
8. 人确认 Claudian 已安装并启用后，可以只读检查 Vault 的 Obsidian 版本信息和插件 manifest；插件目录可能叫 `realclaudian` 或 `claudian`，必须从实际文件发现，不能硬编码路径。
9. 在人从界面确认 provider 为 Codex 后，通过 Claudian 读取 Unit 0 的 `STUDENT.md`，并在个人学习区写入、重读 `CLAUDIAN-CHECK.md`。
10. Claudian 失败时记录原始错误和可见版本信息；确认 Codex 本身可用后，报告直接使用 Codex 操作同一 Vault 的降级路径。

## 不可以执行

- 不修改课程 repo 中的任何课程内容或状态文件。
- 不在课程 repo 中创建状态、身份或作业文件。
- 不 commit、不 push、不发送外部消息。
- 不覆盖已有同名 Skill；先报告现有路径和来源。
- 不把密码、验证码、Cookie、Token、API key 或付款信息写入文件或对话。
- 不在课程 repo 中运行 `teach`；它的持续学习工作区必须位于个人 `Learn/Agent 101/`。
- 不把文件存在说成 Skill 已在当前 task 中加载，也不把 API 失败写成查询成功。
- 不默认从 GitHub Release 手工安装 Claudian，不从源码构建，也不静默修改 Obsidian 设置。
- 不把插件目录存在说成 Claudian 已启用，不把自己的文字回答当成 Codex provider 已在界面选中的证据。
- 不在 Claudian 检查中运行与读写指定 Markdown 文件无关的命令。

## 报告位置

个人输出是：

```text
<个人 Obsidian 知识库>/Learn/Agent 101/Unit 0/SETUP-REPORT.md
<个人 Obsidian 知识库>/Learn/Agent 101/Unit 0/CLAUDIAN-CHECK.md
```

`SETUP-REPORT.md` 至少包含：

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

`CLAUDIAN-CHECK.md` 在线下检查时单独生成，至少包含：

```markdown
# Claudian 检查

- 检查时间：
- 插件 id / version：
- provider：Codex，由人在界面确认 / 需要协助
- 已读取的课程文件：
- 写入结果：已验证 / 需要协助
- human_check: pending / confirmed
- 准确错误：无 / 原始错误
- 降级路径：不需要 / 直接使用 Codex / 需要协助
```

## 验证规则

- repo 路径必须来自本机，不从聊天内容猜测。
- remote 必须由 `git remote -v` 验证。
- Skill 状态必须由实际目录和 `SKILL.md` 验证。
- 新 task 可见性必须在安装后的新 task 中验证。
- AI Hot 结果必须来自真实查询并带来源链接。
- 三个 repo 的访问状态必须来自真实网页或远程读取，不从课程文字推断。
- 写完报告后重新打开并读取一次，确认路径和状态没有互相矛盾。
- Claudian 的安装、启用和 provider 必须由人核对 Obsidian 界面；manifest 只能补充版本证据，不能替代界面确认。
- `CLAUDIAN-CHECK.md` 必须由 Claudian 中的 Codex 实际读取 Unit 0 页面后写入，并由人打开确认；否则保持“需要协助”。
- Claudian 失败不阻断后续直接使用 Codex，但不能写成 Claudian 已验证。
