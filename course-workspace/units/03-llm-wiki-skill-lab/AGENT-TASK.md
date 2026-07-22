# Codex Task：Unit 3 从一次真实流程得到可重复 Skill

## 目标

把 Unit 2 已真实运行并经过人工检查的 Wiki 编译方法整理成 `compile-raw-to-wiki`。先用拆文卡、Wiki 文件变化、人工修正和 Log 建立证据卡，再生成个人草稿；试编 1 篇 Raw 并根据反馈修订，得到明确同意后显式启用，最后在新 task 中逐篇拆文并编译剩余 3–4 篇 Raw。

本合同支持四种明确阶段：`起草`、`单篇试编`、`显式启用`、`批量编译`。只执行人当前要求的阶段，不自动跨过人工确认门。

## 必须先确认的事实

1. 个人 Obsidian Vault 和现有 `Learn/Wiki/` 的绝对路径。
2. Unit 2 的 Raw、已确认 `ARTICLE-DECOMPOSITION.md`、规则说明、Index、Log、知识页面和人工修正真实存在。
3. 本单元新准备 4–5 篇 Web Clipper Raw；每篇正文、原始链接和抓取日期可读。
4. `writing-great-skills` 和 Codex 自带的 `skill-creator` 可实际读取。
5. 个人 Skill 正文目录是 `<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/`。
6. 课程 repo 只读。

缺少 Unit 2 的拆文卡、文件变化、人工修正、Log、现有 Wiki 或足够的 Raw 时停止，不根据模板或课程说明伪造完成状态。

## 人与 Codex 的分工

人负责：

- 选择 4–5 篇值得保留的 Raw；
- 指出 Unit 2 中真正有用或需要纠正的地方；
- 检查 Skill 的范围和停止条件；
- 决定试编结果是否接受；
- 明确说“确认启用”；
- 抽查批量结果。

Codex 负责：

- 从真实拆文卡、文件变化、人工修正和 Log 提取稳定流程；
- 先建立 `SKILL-EVIDENCE.md` 并等待人确认；
- 使用 `writing-great-skills` 和 `skill-creator` 起草并检查 Skill；
- 按当前阶段处理文件、重读结果并汇报；
- 根据人工反馈修订；
- 逐篇记录批量执行结果。

Codex 不得替人选择文章、宣布理解、默认同意启用或接受最终结果。

## 两个 Skill 的规则优先级

- 使用 `writing-great-skills` 检查流程是否可预测、完成标准是否可验证、信息层级和删减是否合理。
- 使用当前 Codex 自带的 `skill-creator` 决定 Skill 目录、`SKILL.md` frontmatter、`agents/openai.yaml` 和校验方式。
- 两者在 frontmatter、隐式调用或文件结构上冲突时，以当前 Codex skill-creator 的规则为准；报告冲突，不混用两套字段。

## 阶段一：证据卡与起草

读取并比较：

- Unit 2 的 Raw 和已确认拆文卡；
- Agent 实际创建和更新的文件；
- Wiki 的规则说明、Index 和 Log；
- 人检查后提出的修正；
- 修正后证明值得重复的步骤。

不得把课程说明本身当成真实运行证据。先使用 `templates/SKILL-EVIDENCE.md` 建立：

```text
<Vault>/Learn/Agent 101/Unit 3/SKILL-EVIDENCE.md
```

证据卡必须把每个候选规则对应到 Unit 2 的文件或 Log，并区分“稳定方法 / 一次性内容”。写完后停下。只有人明确确认“证据卡准确，可以开始起草 Skill”，才能继续。

起草时删除第一篇文章的标题、观点、主题和具体页面名。保留稳定的触发条件、输入、Raw 只读、逐篇拆文并等待人确认、沿用已有 Wiki、来源、Index、Log、已有页面更新判断、人工检查、停止条件和禁止动作。保留来源材料的目标受众和适用场景，不把专家建议改写成新手必须照做的通用命令。

使用课程 `templates/MINI-SKILL.md` 和 `templates/openai.yaml` 作为起点，但以 Unit 2 真实证据为准。输出：

```text
<Vault>/Learn/Agent 101/Unit 3/SKILL-EVIDENCE.md
<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/SKILL.md
<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/agents/openai.yaml
<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/assets/ARTICLE-DECOMPOSITION.md
```

要求：

- 个人 Skill 只负责把 1–5 篇 Raw 编译进已经存在的 Wiki，不负责第一次搭建 Wiki。
- 把 Unit 2 的拆文模板复制到个人 Skill 的 `assets/ARTICLE-DECOMPOSITION.md`，让 Skill 不依赖课程 repo 也能运行。
- 每篇 Raw 都先生成独立拆文卡并等待人确认；没有确认，不写 Wiki。
- 人选择“只保留 Raw / 暂不处理”时记录决定并跳过，不把它报告成编译完成。
- `agents/openai.yaml` 设置 `allow_implicit_invocation: false`，由人显式调用。
- 使用当前 Codex `skill-creator` 的校验脚本检查个人 Skill；校验失败时报告错误并停下，不把草稿说成可启用。
- 同名草稿已存在时先读取并报告差异，不直接覆盖。
- 起草完成后停下，用人话解释边界，不处理新 Raw。

## 阶段二：单篇试编

只有收到试编 Raw 的绝对路径、来源和现有 Wiki 路径后才执行。

1. 在当前 task 中明确读取个人 `SKILL.md` 草稿和 `assets/ARTICLE-DECOMPOSITION.md`，不启用、不安装。
2. 验证 Raw 后，在 `<Vault>/Learn/Agent 101/Unit 3/Decompositions/` 为本篇建立独立拆文卡；同名文件已存在时先读取，不直接覆盖。
3. 草拟拆文卡后停下，请人确认或修改选择原因、主旨、事实和观点、概念和实体、不确定点以及是否进入 Wiki。
4. 人没有明确确认时等待；人选择“只保留 Raw / 暂不处理”时记录决定并停止本篇 Wiki 写入。
5. 人确认“进入 Wiki”后，复述只读、写入范围、预计检查项和停止条件，再沿用同一套 Wiki 处理 1 篇 Raw。
6. 重读 Raw、拆文卡、Index、Log 和变化的知识页面。
7. 停下，请人打开这五类文件并给出“保留 / 修改 / 不确定”。
8. 收到反馈后只做必要修正，并更新 Wiki Log。
9. 填写个人 `TRIAL-REPORT.md`。
10. 再次使用 `writing-great-skills` 检查草稿；根据真实偏差修订，或明确记录为什么无需修改。检查目标受众和适用场景是否在编译中被改变。
11. 停下等待“确认启用”。

文件生成不代表试编通过。人工判断没有出现时，只能报告“等待检查”。

## 阶段三：显式启用

只有人明确说“确认启用”后才执行。

1. 验证个人正文目录内 `SKILL.md`、`agents/openai.yaml` 和 `assets/ARTICLE-DECOMPOSITION.md` 可读。
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
5. 每篇先在 `<Vault>/Learn/Agent 101/Unit 3/Decompositions/` 建立拆文卡并停下等待人确认。
6. 人选择“只保留 Raw / 暂不处理”时记录决定，不写 Wiki；人的判断不明确时标记等待，不自动继续。
7. 只有人确认“进入 Wiki”后，才读取现有规则、Index、Log 和相关知识，再决定新建或更新。
8. 优先更新已有概念、实体或比较页面，避免近义重复和每篇一套结构。
9. 每篇写入后记录拆文卡、人的决定、创建、更新、复用、未创建及原因；先记为等待批量抽查，再继续下一篇，不要求人逐篇做第二次写后检查。
10. 全部处理后重读 Index、Log、本次知识变化和所有 Raw 状态。
11. 填写个人 `BATCH-REPORT.md`；最终批量抽查前，已写入项保持“等待确认”，不得提前写“完成”。
12. 停下等待人抽查至少两篇 Raw、对应拆文卡和知识内容，以及 Index 和 Log；收到判断后只做必要修正并更新 Log。
13. 批量抽查通过后，再把符合条件的已写入项改为“完成”；逐篇保留 `完成 / 跳过 / 等待确认 / 阻断`，不得用整批一句话代替。

只要一篇仍在等待确认或阻断，整批就不能报告为“全部处理完成”。人明确选择跳过不属于失败，但不能计入编译完成数。

## 永久禁止动作

- 不改写、移动、覆盖、重命名或删除 Raw。
- 不在没有现有 Wiki 时自动搭建第一套 Wiki。
- 不建立平行 Wiki，不机械创建空 Concept、Entity 或 Comparison 页面。
- 不跳过拆文卡和人的确认直接编译新 Raw。
- 不把 Unit 2 的一次性文章内容写入通用 Skill。
- 不自动启用，不覆盖同名 Skill，不把沉默当同意。
- 不修改课程 repo，不 commit、不 push、不发消息、不执行与本单元无关的外部动作。

## 最终输出

```text
<Vault>/Learn/Agent 101/Unit 3/SKILL-EVIDENCE.md
<Vault>/Learn/Agent 101/Unit 3/Decompositions/<每篇 Raw 对应的拆文卡>.md
<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/SKILL.md
<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/agents/openai.yaml
<Vault>/Learn/Agent 101/Skills/compile-raw-to-wiki/assets/ARTICLE-DECOMPOSITION.md
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
Unit 2 证据卡：
Skill 中的拆文模板：
试编 Raw 与结果：
批量 Raw 总数：
完成数：
跳过数：
等待确认数：
阻断数：
Wiki 创建文件：
Wiki 更新文件：
复用的已有页面：
Raw 前后检查：
人的单篇检查：
人的批量抽查：
课程 repo：保持只读 / 需要检查
```
