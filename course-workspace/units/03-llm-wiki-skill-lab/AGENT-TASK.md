# Codex Task：Unit 3 LLM Wiki Skill Lab

## 目标

使用 `writing-great-skills`，把 Unit 2 已真实执行过的文章编译流程整理成可预测、边界清楚的 mini Skill。先写入个人课程沉淀区，用第二篇 Raw 试用，再让人决定是否安装。

## 前置

开始写文件前，逐项确认：

1. 个人 Obsidian 知识库的绝对路径。
2. Unit 2 主题目录，以及四个产物路径：`COMPILATION-RULES.md`、`COMPILATION.md`、`LEARNING-CARD.md`、`PITCH.md`。
3. 第二篇 Raw 的原文链接和文件路径。
4. `writing-great-skills` 是否可读取；可读取时先按它检查 Skill 结构。
5. 个人 Skill 草稿目录是否为 `<个人 Obsidian 知识库>/Learn/Agent 101/Skills/aihot-to-llm-wiki-card/`。
6. 当前 Codex 对个人目录和共享输出目录分别具有什么写入权限。

任一关键路径缺失时，先报告缺口并走降级路径，不要猜测。

## 允许动作

- 读取 Unit 2 个人产物、第二篇 Raw、本 Unit 模板和 `writing-great-skills`。
- 读取 `materials/SKILL-CATALOG.md` 和 `materials/IMPORT-AND-SAVE.md`，需要扩展讲解时以这两份附录为准。
- 创建缺失的个人 Skill 草稿目录。
- 根据 [mini Skill 模板](templates/MINI-SKILL.md) 写 `SKILL.md`。
- 手动调用草稿处理第二篇 Raw，并把知识产物写到个人 `Learn/Wiki/<第二主题>/`。
- 根据 [试用报告模板](templates/TRIAL-REPORT.md) 写 `TRIAL-REPORT.md`。
- 根据人的检查意见收紧触发条件、步骤、完成标准和禁止动作。
- 老师明确要求共享时，在获授权的个人共享输出目录只记录任务状态、草稿路径、试用产物路径和安装决定。

## 执行顺序

1. 从 Unit 2 产物中提取真实重复步骤，排除只属于第一篇文章的事实和表述。
2. 读取 `writing-great-skills`，决定本草稿采用手动调用；保留 `disable-model-invocation: true`。
3. 写 `SKILL.md`，确保每一步都有可检查的完成条件，信息只保留一个事实源。
4. 检查 Skill 不会自动安装、改写 Raw、写出个人目录、提交、推送、删除或发消息。
5. 用第二篇 Raw 手动调用草稿；记录实际输入、写入文件和人工确认点。
6. 请人核对至少一条来源，并说明哪一步清楚、哪一步含糊、哪一步可能越权或编造。
7. 写 `TRIAL-REPORT.md`，再根据反馈修订 `SKILL.md`。
8. 请人明确选择“暂不安装”或“确认另行安装”，并把决定写入报告。
9. 最终只报告绝对路径、试用结果、修改点和安装决定。

## 禁止动作

- 不把 Unit 2 的一次性内容直接复制成通用规则。
- 不在缺少 Unit 2 产物时凭空设计流程。
- 不自动安装草稿，不写入 `~/.codex/skills/`；即使人确认安装，也要另起明确的安装动作。
- 不自动导入或执行外部 Skill、脚本、命令或配置。
- 不把“在 X、AI Hot 或 GitHub 看见”当作安全、质量或安装依据。
- 不覆盖已有同名 Skill；先展示冲突并请人决定。
- 不把个人 Skill 正文、Raw、学习卡或试用内容复制到共享 Workspace。
- 不提交、不推送、不删除文件，不发外部消息。

## 输出

个人 Skill 草稿目录中必须有：

```text
<个人 Obsidian 知识库>/Learn/Agent 101/Skills/aihot-to-llm-wiki-card/SKILL.md
<个人 Obsidian 知识库>/Learn/Agent 101/Skills/aihot-to-llm-wiki-card/TRIAL-REPORT.md
```

第二篇 Raw 的个人知识产物必须位于：

```text
<个人 Obsidian 知识库>/Learn/Wiki/<第二主题>/
```

最终报告只列：

```text
Skill 草稿路径：
试用报告路径：
第二篇 Raw 路径：
试用产物目录：
来源核对项：
修改点：
安装决定：暂不安装 / 确认另行安装
共享记录：未要求 / 状态与路径所在文件
```

## 人工检查

完成前必须由人执行并回应：

1. 说清这个 Skill 什么时候用、什么时候不用。
2. 打开第二篇 Raw，核对试用产物中的至少一条事实。
3. 指出至少一个含糊、重复、误触发、越权或编造风险，并确认修订结果。
4. 确认所有个人产物都在个人目录，共享 Workspace 没有正文副本。
5. 明确记录是否另行安装；沉默或未决定都按不安装处理。

## 降级路径

- Unit 2 产物缺失：停止写 Skill，先补齐指定产物或让老师确认可接受的缺口。
- `writing-great-skills` 不可读取：使用本 Unit 的 `MINI-SKILL.md` 做草稿，并在报告中注明尚未完成该参考检查。
- 第二篇 Raw 不可用：改用老师提供的第二篇 Raw；若仍没有，只做结构审查并把试用标为未执行，不能宣称本单元完成。
- 个人知识库路径未确认：停止写入，不得把 Skill 草稿放进共享 Workspace 代替。
- 时间不足：用一篇较短的第二 Raw 做最小试用，保留来源、摘要、人工回答、来源核对和问题修改；不安装。
