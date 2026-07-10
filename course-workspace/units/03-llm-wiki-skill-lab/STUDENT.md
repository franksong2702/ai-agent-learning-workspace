# Unit 3：把 LLM Wiki 编译流程沉淀成 Skill

## 你要完成什么

Unit 2 已经让你亲手完成一次 `Raw -> 编译 -> 学习卡 -> Pitch`。本单元把其中真正会重复的步骤写成一个 mini Skill，并用第二篇 Raw 做一次试用。

Skill 不是收藏夹，也不是安装越多越好。它是一套你愿意让 Codex 反复遵守的工作方式，必须写清触发条件、输入、步骤、边界、输出和完成标准。

## 前置

- Unit 2 的 `COMPILATION-RULES.md`、`COMPILATION.md`、`LEARNING-CARD.md` 和 `PITCH.md` 可以打开。
- 已准备第二篇带来源的 Raw 文章；没有自选材料时可从 Unit 2 的 [备用文章池](../02-aihot-obsidian-pitch/materials/ARTICLE-CANDIDATES.md) 另选一篇。
- Codex 可以使用 `writing-great-skills`。
- 已确认个人 Obsidian 知识库的绝对路径。

缺少 Unit 2 产物时，先回去补齐或说明缺口，不要凭空写 Skill。

## Skill 草稿放哪里

```text
<个人 Obsidian 知识库>/Learn/Agent 101/Skills/aihot-to-llm-wiki-card/
  SKILL.md
  TRIAL-REPORT.md
```

这里是个人课程沉淀区，不是 Codex 的已安装 Skill 目录。草稿写完和试用完成后，由人明确决定是否安装；在确认前不要写入 `~/.codex/skills/`。

第二篇文章的知识产物仍写入：

```text
<个人 Obsidian 知识库>/Learn/Wiki/<第二主题>/
```

共享 Workspace 只在老师明确要求时记录状态、草稿路径和人工决定，不复制 Skill 正文或个人学习卡。

## 课堂动作

1. 回看 Unit 2，列出每次都会重复的步骤和只属于那篇文章的内容。
2. 让 Codex 读取 `writing-great-skills`，重点检查触发方式、信息层级、单一事实源、可检查完成标准和常见失效方式。
3. 打开 [mini Skill 模板](templates/MINI-SKILL.md)，先写一份默认手动调用的 `SKILL.md`。
4. 把下面的“手动试用提示词”发给 Codex，用第二篇 Raw 试用草稿，观察它是否按相同过程写入新的 `Learn/Wiki/<第二主题>/`。
5. 打开 [试用报告模板](templates/TRIAL-REPORT.md)，记录实际输入、输出、偏差和修改。
6. 修改 `SKILL.md`，删掉重复或不会改变行为的句子，收紧容易误触发或越权的动作。
7. 由你确认：暂不安装，还是另起一个安装动作。没有明确确认时，默认不安装。

手动试用不是把 Skill 安装到系统里，而是明确告诉 Codex：本次只按这份草稿执行。

```text
请不要安装这份 Skill。请读取以下个人草稿并只在本次任务中按它执行：
[填写个人 Skill 草稿 SKILL.md 的绝对路径]

第二篇 Raw 路径：[填写绝对路径]
原文链接：[填写链接]
第二主题：[填写主题]
个人 Obsidian 知识库：[填写绝对路径]

开始前先复述唯一写入目录、人工确认门和禁止动作，等我确认后再处理。
```

如果 `writing-great-skills` 当前不可用，先使用本 Unit 的 mini Skill 模板完成结构草稿，并在试用报告中明确写“参考 Skill 尚未检查”；不要因此跳过第二篇 Raw 试用。

## 完成标准

- 个人 Skill 目录中存在 `SKILL.md` 和 `TRIAL-REPORT.md`。
- `SKILL.md` 写清什么时候用、什么时候不用、输入、步骤、输出、人工确认门和禁止动作。
- 第二篇 Raw 的试用产物位于 `Learn/Wiki/<第二主题>/`，并完成一次来源核对。
- `TRIAL-REPORT.md` 记录至少一个问题和对应修改。
- 是否安装已有人的明确决定；未决定等同于不安装。

## 两份扩展附录

- [8 个课程 Skill 与发现入口](materials/SKILL-CATALOG.md)：知道每个 Skill 在什么时候提供帮助，不把 Skill 当收藏夹。
- [外部 Skill 的导入与保存](materials/IMPORT-AND-SAVE.md)：练习发现、暂存、审计、试用、安装和保留出处。

附录是扩展知识。课堂先完成 mini Skill 和第二篇 Raw 试用，再根据时间选择讲解；不要求一次安装全部 Skill。
