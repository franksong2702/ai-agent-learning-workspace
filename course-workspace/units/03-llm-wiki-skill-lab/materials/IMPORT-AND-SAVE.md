# 外部 Skill 的导入与保存

## 四个动作不是一回事

```text
发现：看到一个候选
审查：读完整内容、依赖和风险
试用：在小任务上观察真实行为
启用：明确同意后，让 Codex 可以发现它
```

看到 GitHub 链接不等于已经可信；下载到本机不等于已经启用；启用也不等于以后可以不检查结果。

## 自己写的 Skill：个人 Obsidian 是唯一正文

Unit 3 的 `compile-raw-to-wiki` 保存在：

```text
<个人 Obsidian Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/
```

确认试编结果后，再从 Codex 当前支持的个人 Skill 位置建立符号链接：

```text
~/.agents/skills/compile-raw-to-wiki
→ <个人 Obsidian Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/
```

这样只有一份正文：在 Obsidian 中修改，Codex 读取同一目录。目标已存在时必须停止，不覆盖、不删除。

## 外部 Skill：先放到审查区

```text
<个人 Obsidian Vault>/Learn/Agent 101/Skills/Inbox/<skill-name>/
  SOURCE.md
  REVIEW.md
```

- `SOURCE.md`：原始链接、作者、repo、版本或 commit、查看日期和许可证。
- `REVIEW.md`：用途、输入、文件动作、联网行为、危险动作、依赖、试用结果和决定。

不完整复制 `SKILL.md` 及依赖，就不要声称已经完成审查。候选文件可以放在独立暂存目录，但不要提前放入 `~/.agents/skills/`。

## 六步审查

1. **追到原始来源**：从 AI Hot、X 或文章回到作者 repo 和具体 Skill 目录。
2. **读取完整依赖**：检查 `SKILL.md` 引用的 scripts、references、assets 和工具依赖。
3. **检查权限与影响**：确认是否联网、读私人文件、改配置、安装软件、删除、提交、推送或发消息。
4. **检查重复与维护**：确认是否已有同名或同用途 Skill，以及最近更新和 issue 情况。
5. **用小任务试用**：在非敏感材料上明确调用一次，记录它实际读写了什么。
6. **由人决定**：写“暂不启用”或“确认启用”；沉默不是同意。

## 给 Codex 的审查提示词

```text
请先不要安装、启用或执行这个外部 Skill。

来源：[粘贴原始 Skill 目录或 repo 链接]
个人审查目录：[填写绝对路径]

请读取完整 SKILL.md 及其引用文件，然后写 SOURCE.md 和 REVIEW.md，回答：
1. 它什么时候触发，什么时候不该触发？
2. 它会读取、写入、联网或执行什么？
3. 是否包含删除、配置修改、commit、push、发消息或敏感数据风险？
4. 缺少哪些依赖、许可证、版本或来源信息？
5. 是否与本机已有 Skill 重名或重复？
6. 最小非敏感试用任务是什么，怎样判断结果？

完成审查后停下来，等待我决定。不要执行脚本，不要写入 ~/.agents/skills，不要修改课程 repo，不 commit 或 push。
```

## 确认后怎样启用

分两种情况：

- **自己写的本地 Skill**：像 Unit 3 一样保留 Obsidian 唯一正文，在明确同意后链接到 `~/.agents/skills/`。
- **GitHub 上的外部 Skill**：优先使用 Codex 当前的 `$skill-installer` 或该工具官方提供的安装方式，并指定具体 repo 路径；不要搜索同名替代品。

启用后新开一个 Codex task，检查：

- 可用列表中是否出现正确名称；
- 实际 `SKILL.md` 路径是否和预期一致；
- 来源和版本是否仍可查；
- 用同一个小任务再次运行时，行为是否符合审查记录。

Skill 更新后也要重新检查变更。旧版本可信，不代表新版本自动可信。
