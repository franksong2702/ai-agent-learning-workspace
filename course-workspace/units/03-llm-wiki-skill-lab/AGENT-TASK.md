# Codex Task：Unit 3 从一次真实流程得到可重复 Skill

## 目标

把 Unit 2 已真实运行并经过人工检查的 Wiki 编译方法整理成 `compile-raw-to-wiki`。先生成个人草稿，再试编 1 篇 Raw，根据人工反馈修订；得到明确同意后显式启用，并在新 task 中编译剩余 3–4 篇 Raw。

本合同支持四种明确阶段：`起草`、`单篇试编`、`显式启用`、`批量编译`。只执行人当前要求的阶段，不自动跨过人工确认门。

## 必须先确认的事实

1. 个人 Obsidian Vault 和现有 `Learn/Wiki/` 的绝对路径。
2. Unit 2 的 Raw、规则说明、Index、Log、知识页面和人工修正真实存在。
3. 本单元新准备 4–5 篇 Web Clipper Raw；每篇正文、原始链接和抓取日期可读。
4. `writing-great-skills` 和 Codex 自带的 `skill-creator` 可实际读取。
5. 个人 Skill 正文目录是 `<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/`。
6. 课程 repo 只读。

缺少 Unit 2 的真实证据、现有 Wiki 或足够的 Raw 时停止，不根据模板伪造完成状态。

## 人与 Codex 的分工

人负责：

- 选择 4–5 篇值得保留的 Raw；
- 指出 Unit 2 中真正有用或需要纠正的地方；
- 检查 Skill 的范围和停止条件；
- 决定试编结果是否接受；
- 明确说“确认启用”；
- 抽查批量结果。

Codex 负责：

- 从真实文件和 Log 提取稳定流程；
- 使用 `writing-great-skills` 和 `skill-creator` 起草并检查 Skill；
- 按当前阶段处理文件、重读结果并汇报；
- 根据人工反馈修订；
- 逐篇记录批量执行结果。

Codex 不得替人选择文章、宣布理解、默认同意启用或接受最终结果。

## 阶段一：起草

读取并比较：

- Unit 2 的简短提示词；
- Agent 实际创建和更新的文件；
- Wiki 的规则说明、Index 和 Log；
- 人检查后提出的修正；
- 修正后证明值得重复的步骤。

删除第一篇文章的标题、观点、主题和具体页面名。保留稳定的触发条件、输入、Raw 只读、沿用已有 Wiki、来源、Index、Log、已有页面更新判断、人工检查、停止条件和禁止动作。

使用课程 `templates/MINI-SKILL.md` 和 `templates/openai.yaml` 作为起点，但以 Unit 2 真实证据为准。输出：

```text
<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/SKILL.md
<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/agents/openai.yaml
```

要求：

- 个人 Skill 只负责把 1–5 篇 Raw 编译进已经存在的 Wiki，不负责第一次搭建 Wiki。
- `agents/openai.yaml` 设置 `allow_implicit_invocation: false`，由人显式调用。
- 同名草稿已存在时先读取并报告差异，不直接覆盖。
- 起草完成后停下，用人话解释边界，不处理新 Raw。

## 阶段二：单篇试编

只有收到试编 Raw 的绝对路径、来源和现有 Wiki 路径后才执行。

1. 在当前 task 中明确读取个人 `SKILL.md` 草稿，不启用、不安装。
2. 开始前复述只读、写入范围、预计检查项和停止条件。
3. 处理 1 篇 Raw，沿用同一套 Wiki。
4. 重读 Raw、Index、Log 和变化的知识页面。
5. 停下，请人打开 Raw、Index 和一页知识内容并给出“保留 / 修改 / 不确定”。
6. 收到反馈后只做必要修正，并更新 Wiki Log。
7. 填写个人 `TRIAL-REPORT.md`。
8. 再次使用 `writing-great-skills` 检查草稿；根据真实偏差修订，或明确记录为什么无需修改。
9. 停下等待“确认启用”。

文件生成不代表试编通过。人工判断没有出现时，只能报告“等待检查”。

## 阶段三：显式启用

只有人明确说“确认启用”后才执行。

1. 验证个人正文目录内 `SKILL.md` 和 `agents/openai.yaml` 可读。
2. 验证 `allow_implicit_invocation: false`。
3. 检查 `~/.agents/skills/compile-raw-to-wiki`。
4. 目标已存在时停止并报告，不覆盖、不删除。
5. 目标不存在时，创建 `~/.agents/skills/`（如需要），再建立指向个人正文目录的符号链接。
6. 使用 `readlink` 和文件读取确认链接解析到同一份 `SKILL.md`。
7. 报告链接路径、目标路径和验证结果，要求人新开 Codex task。

不把个人草稿复制成第二份正文；不使用 `skill-installer` 安装本地草稿。若新 task 未发现 Skill，先建议重启 Codex，不重复创建链接。

## 阶段四：批量编译

这一阶段应在新 Codex task 中由人明确调用 `$compile-raw-to-wiki`。

1. 读取本合同和课程 `templates/BATCH-REPORT.md`，再确认可用 Skill 列表和实际 `SKILL.md` 路径。
2. 接收剩余 3–4 篇 Raw 的有序列表和原文链接。
3. 先逐篇检查正文、来源和路径；任一输入不合格时标记阻断，不猜测或替换。
4. 按列表顺序逐篇完成，不并行写 Wiki。
5. 每篇先读取现有规则、Index、Log 和相关知识，再决定新建或更新。
6. 优先更新已有概念、实体或比较页面，避免近义重复和每篇一套结构。
7. 每篇完成后记录创建、更新、复用、未创建及原因。
8. 全部处理后重读 Index、Log、本次知识变化和所有 Raw 状态。
9. 填写个人 `BATCH-REPORT.md`，逐篇给出 `完成 / 阻断`，不得用整批一句话代替。
10. 停下等待人抽查两篇来源对应的知识内容、Index 和 Log。

只要一篇仍是阻断状态，整批就不能报告为“全部编译完成”。

## 永久禁止动作

- 不改写、移动、覆盖、重命名或删除 Raw。
- 不在没有现有 Wiki 时自动搭建第一套 Wiki。
- 不建立平行 Wiki，不机械创建空 Concept、Entity 或 Comparison 页面。
- 不把 Unit 2 的一次性文章内容写入通用 Skill。
- 不自动启用，不覆盖同名 Skill，不把沉默当同意。
- 不修改课程 repo，不 commit、不 push、不发消息、不执行与本单元无关的外部动作。

## 最终输出

```text
<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/SKILL.md
<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/agents/openai.yaml
<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/TRIAL-REPORT.md
<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/BATCH-REPORT.md
```

批量编译只更新已有：

```text
<Vault>/Learn/Wiki/
```

## 最终报告格式

```text
个人 Skill 正文：
Codex Skill 链接：
Unit 2 证据：
试编 Raw 与结果：
批量 Raw 总数：
完成数：
阻断数：
Wiki 创建文件：
Wiki 更新文件：
复用的已有页面：
Raw 前后检查：
人的单篇检查：
人的批量抽查：
课程 repo：保持只读 / 需要检查
```
