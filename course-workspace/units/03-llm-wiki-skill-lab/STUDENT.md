# Unit 3：把一次成功做法变成自己的 Skill

Unit 2 已经完成了一篇文章的真实 Wiki 编译。现在的问题是：下一次再来 4 篇文章，还要不要重新解释一遍所有规则？

Unit 3 要做的不是背 Skill 格式，也不是照着提示词按按钮。你要从刚才的真实经历中判断：

- 哪些步骤每次都值得重复；
- 哪些内容只属于第一篇文章，应该删掉；
- 哪些地方必须由人检查和决定；
- 遇到什么情况，Codex 必须停下来。

最后得到的不是一段更长的提示词，而是一份你以后可以反复使用、继续修改的个人 Skill。

```text
Unit 2 的真实文件和修正
→ 写成 Skill 草稿
→ 先试编 1 篇 Raw
→ 人检查并修订 Skill
→ 显式启用
→ 新 task 编译剩余 3–4 篇 Raw
→ 最后再看 Slides 扩展视野
```

## 开始前准备

1. Unit 2 已完成，个人 `Learn/Wiki/` 中能打开规则说明、Index、Log 和至少一页来源知识。
2. 用 Obsidian Web Clipper 新抓取 4–5 篇文章到个人 `Inbox/Raw/`。
3. 每篇 Raw 都有正文、原始链接和抓取日期；只有网址不算准备完成。
4. 已准备 `writing-great-skills`，并确认 Codex 自带的 `skill-creator` 可用。
5. 已确认个人 Obsidian Vault 和 `Learn/Wiki/` 的绝对路径。

4–5 篇文章可以来自同一兴趣主题，也可以不同。选择自己真的想留下的内容，比凑数量重要。

## 最后会留下什么

```text
<个人 Obsidian Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/
  SKILL.md
  agents/
    openai.yaml
  TRIAL-REPORT.md
  BATCH-REPORT.md
```

这个目录是个人 Skill 的唯一正文。确认启用后，Codex 的个人 Skill 目录只建立指向这里的链接，不再复制第二份正文。

## 第一阶段：从真实经历写出草稿

先选好 4–5 篇 Raw，但现在不要编译。你先让 Codex 回看 Unit 2，提取稳定做法。

在 Codex 写完以后，不要急着继续。先用自己的话回答：这个 Skill 什么时候用、会改哪里、什么情况下必须停。

### 一键复制给 Codex：先写草稿

```text
请开始 Agent 101 Unit 3 的第一阶段：从 Unit 2 的真实结果写出个人 Skill 草稿。

先读取课程 repo 中：
- SKILLS.md
- course-workspace/units/02-aihot-obsidian-pitch/STUDENT.md
- course-workspace/units/02-aihot-obsidian-pitch/AGENT-TASK.md
- course-workspace/units/03-llm-wiki-skill-lab/STUDENT.md
- course-workspace/units/03-llm-wiki-skill-lab/AGENT-TASK.md
- course-workspace/units/03-llm-wiki-skill-lab/templates/MINI-SKILL.md
- course-workspace/units/03-llm-wiki-skill-lab/templates/openai.yaml
- course-workspace/units/03-llm-wiki-skill-lab/templates/TRIAL-REPORT.md
- course-workspace/units/03-llm-wiki-skill-lab/templates/BATCH-REPORT.md

请明确使用 writing-great-skills 和 skill-creator。先请我确认：
1. 个人 Obsidian Vault 的绝对路径；
2. Unit 2 的 Raw、Wiki 规则说明、Index、Log 和知识页面路径；
3. Unit 2 中我要求过的修正；
4. 本单元准备的 4–5 篇 Raw 绝对路径和原文链接。

从 Unit 2 的真实文件中区分稳定步骤和一次性内容，建立：
<个人 Obsidian Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/SKILL.md
<个人 Obsidian Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/agents/openai.yaml

Skill 只处理已经存在的个人 Wiki，不负责第一次搭建 Wiki。它必须保持 Raw 只读、沿用同一套 Wiki、维护来源/Index/Log、优先更新已有知识、逐篇汇报，并在输入或规则不明确时停止。

草稿写完后停下，用高中生能听懂的中文解释：什么时候使用、输入什么、会更新什么、不会做什么、怎样才算完成。现在不要编译任何新 Raw，不要启用 Skill，不要修改课程 repo，不 commit、不 push、不删除文件。
```

### 你来检查草稿

不需要逐字审查所有格式，先看五件事：

1. 它有没有偷偷写进第一篇文章的标题或观点？
2. 它是否明确只更新已经存在的 `Learn/Wiki/`？
3. 它是否保证 Raw 不改、不移、不删？
4. 它是否会优先更新已有页面，而不是每篇文章都建一套新页面？
5. 它是否写清楚何时停下、何时等人检查？

任何一项说不清楚，都先让 Codex 修改草稿。

## 第二阶段：先用 1 篇 Raw 试编

从 4–5 篇 Raw 中选 1 篇。最好选择一篇和 Unit 2 有部分关联、但内容不完全相同的文章，这样能看出 Skill 会不会更新已有知识。

这一步的关键不是“文件生成了”，而是你能否看出它做得对不对。

```text
请开始 Unit 3 的单篇试编。不要启用或安装 Skill。

个人 Skill 草稿：
[填写 SKILL.md 绝对路径]

个人 Obsidian Vault：
[填写绝对路径]

本次试编 Raw：
[填写 1 篇 Raw 的绝对路径]

原文链接：
[填写链接]

现有 Wiki 根目录：
[填写 <Vault>/Learn/Wiki/ 的绝对路径]

请只在本次 task 中读取并执行这份草稿。开始前先复述：Raw 只读、只更新现有 Wiki、预计会检查或更新哪些职责、完成后我需要打开哪三个文件。

执行并重读后停下，等我打开 Raw、Index 和一页知识内容，给出“保留 / 修改 / 不确定”。收到我的判断后，只做必要修正，更新 Wiki Log，填写个人 TRIAL-REPORT.md，再使用 writing-great-skills 修改 Skill 草稿。不要启用 Skill，不要修改课程 repo，不 commit、不 push、不删除文件。
```

### 你来决定是否可以启用

试编后必须亲自打开：

- 这篇 Raw：确认原始材料没有被改；
- Wiki Index：确认新增或更新的知识能找到；
- 一页知识内容：确认有来源、读得懂，而且没有无意义重复。

只有当你能解释 Skill 做了什么，并且接受修订后的结果时，才说“确认启用”。沉默不等于同意。

## 第三阶段：显式启用个人 Skill

这里使用 Codex 当前支持的个人 Skill 位置 `~/.agents/skills/`。只建立链接，让 Obsidian 中的版本继续作为唯一正文。

```text
我已经检查单篇试编结果，现在确认启用 compile-raw-to-wiki。

个人 Skill 正文目录：
[填写 <Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/ 的绝对路径]

请先检查：
1. SKILL.md 和 agents/openai.yaml 存在且可读；
2. agents/openai.yaml 已关闭隐式调用；
3. ~/.agents/skills/compile-raw-to-wiki 是否已经存在。

如果目标已经存在，不要覆盖，停下并报告。否则创建 ~/.agents/skills/（如不存在），再建立一个名为 compile-raw-to-wiki 的符号链接，指向上面的个人 Skill 正文目录。

完成后验证链接能解析到同一个 SKILL.md，并报告实际链接和目标路径。不要复制第二份正文，不要修改课程 repo，不 commit、不 push、不删除文件。最后提醒我新开一个 Codex task；如果新 task 仍看不到 Skill，再提示我重启 Codex。
```

## 第四阶段：新 task 编译剩余 3–4 篇

新开 Codex task 后，先确认可用 Skill 列表中出现 `compile-raw-to-wiki`。然后把剩余 Raw 一次列清楚。

你仍然负责选择输入和检查结果；Skill 负责让 Codex 不必重新猜整套工作方式。

```text
请明确使用 $compile-raw-to-wiki，把下面剩余的 Raw 逐篇编译进我已经存在的同一套 Wiki。

开始前先读取课程 repo 中：
- course-workspace/units/03-llm-wiki-skill-lab/AGENT-TASK.md
- course-workspace/units/03-llm-wiki-skill-lab/templates/BATCH-REPORT.md

这两个课程文件只提供批量执行边界和报告格式，实际编译方法以已启用的 $compile-raw-to-wiki 为准。

个人 Obsidian Vault：
[填写绝对路径]

现有 Wiki 根目录：
[填写 <Vault>/Learn/Wiki/ 的绝对路径]

剩余 Raw 与原文链接：
1. [Raw 绝对路径] | [原文链接]
2. [Raw 绝对路径] | [原文链接]
3. [Raw 绝对路径] | [原文链接]
4. [如有，第 4 篇 Raw 绝对路径] | [原文链接]

请先检查每篇 Raw 的正文和来源，再按列表顺序逐篇处理。每完成一篇就记录它创建、更新或复用的文件，不建立平行 Wiki，不重复创建已有概念或实体。

全部处理后重读 Index、Log 和本次变化，确认所有 Raw 保持不变，填写：
<个人 Obsidian Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/BATCH-REPORT.md

如果任一篇被阻断，明确写出原因，不要把整批报告为完成。最后停下，等我抽查两篇 Raw 对应的知识内容、Index 和 Log。不要修改课程 repo，不 commit、不 push、不删除文件。
```

## 什么算完成

- 个人 Skill 目录中存在 `SKILL.md`、`agents/openai.yaml`、`TRIAL-REPORT.md` 和 `BATCH-REPORT.md`。
- Skill 来自 Unit 2 的真实运行，不包含第一篇文章的一次性内容。
- 4–5 篇新 Raw 中，1 篇完成试编，剩余 3–4 篇在新 task 中使用同一 Skill 编译。
- 所有 Raw 保持不变，所有内容进入同一套 `Learn/Wiki/`。
- Batch Report 能逐篇对应输入、创建或更新文件、来源和状态；任何阻断都没有被冒充完成。
- 人完成单篇三文件检查和最后的批量抽查。

完成实操后，再打开 [Unit 3 Slides](SLIDES.md)。Slides 不重复操作步骤，只讲 Skill 的特点、可靠来源、GitHub 目录、AI Hot 和 X 上的发现线索。

## 扩展材料

- [Skill 来源与发现入口](materials/SKILL-CATALOG.md)
- [外部 Skill 的导入与保存](materials/IMPORT-AND-SAVE.md)
