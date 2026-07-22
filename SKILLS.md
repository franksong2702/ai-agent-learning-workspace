# 课程 Skill 地图

Skill 在这门课里有两个作用：先作为 Codex 的现成能力使用，再在 Unit 3 里拆开来看它为什么有效、怎样把自己的重复做法写成 Skill。

不需要一开始把所有 Skill 都装完。每个 Unit 只准备马上要用的那一组。

## 8 个课程 Skill

| Skill | 第一次准备 | 在课程里做什么 | 来源与状态 |
| --- | --- | --- | --- |
| `teach` | Unit 0 | 在概念听不懂时，把材料讲到你能复述 | [Matt Pocock / teach](https://github.com/mattpocock/skills/tree/main/skills/productivity/teach)，需要安装 |
| `aihot` | Unit 0 | 从 AI Hot 查询资讯，再追到原始来源 | [AI Hot 官方 Skill](https://aihot.virxact.com/aihot-skill/)，需要安装 |
| `writing-great-skills` | Unit 3 | 检查 Skill 的触发、结构、边界和完成标准 | [Matt Pocock / writing-great-skills](https://github.com/mattpocock/skills/tree/main/skills/productivity/writing-great-skills)，需要安装 |
| `skill-installer` | Unit 0 使用，Unit 3 解释 | 从指定 GitHub 来源安装外部 Skill | [Codex Build Skills](https://learn.chatgpt.com/docs/build-skills)，Codex 自带 |
| `skill-creator` | Unit 3 | 新建、整理并检查自己的 Skill | [Codex Build Skills](https://learn.chatgpt.com/docs/build-skills)，Codex 自带 |
| `diagnosing-bugs` | Unit 4 | 网页出错时先复现和定位，再修改 | [Matt Pocock / diagnosing-bugs](https://github.com/mattpocock/skills/tree/main/skills/engineering/diagnosing-bugs)，需要安装 |
| `playwright-cli` | Unit 4 | 让 Codex 在真实浏览器里检查页面和交互 | [Microsoft / playwright-cli](https://github.com/microsoft/playwright-cli/tree/main/skills/playwright-cli)，需要安装 |
| `grill-me` | Unit 5 | 用逐个追问把模糊想法整理成清楚的工作说明 | [Matt Pocock / grill-me](https://github.com/mattpocock/skills/tree/main/skills/productivity/grill-me)，需要同时安装 `grilling` 依赖 |

这里的“8 个”指 8 个课程能力，不等于电脑上一定新增 8 个文件夹：其中两个是 Codex 自带；`grill-me` 还会多安装一个名为 `grilling` 的支持依赖。

## 每个 Unit 怎样使用

| Unit | 使用方式 | 人要理解和决定什么 | Codex 可以做什么 |
| --- | --- | --- | --- |
| Unit 0 | 安装并验证 `teach`、`aihot` | 确认来源、允许安装、核对结果 | 检查现有安装、安装缺失项、报告路径 |
| Unit 1 | 正式使用 `teach` 阅读指定原文 | 哪个概念没有真正听懂，怎样继续追问，能否用自己的话复述 | 根据原文互动解释、换例子并检查理解，不替人宣布学会 |
| Unit 2 | 可用 `aihot` 找兴趣文章来源；不使用预制编译 Skill | 选择文章、确认 Web Clipper Raw、共同拆文、检查 Wiki 文件 | 创建拆文卡，按确认过的判断执行最小 Wiki 编译 |
| Unit 3 | 使用 `writing-great-skills`、`skill-creator`；扩展了解 `skill-installer` | 从 Unit 2 证据区分稳定方法和一次性内容；确认每篇拆文、试编结果与是否显式启用 | 建立 Skill 证据卡和自包含草稿；先试编 1 篇，再逐篇拆文并处理剩余 3–4 篇 Raw |
| Unit 4 | 使用 `diagnosing-bugs`、`playwright-cli` | 现象是否真实、页面是否符合预期、修复是否可接受 | 复现问题、修改代码、运行测试和浏览器检查 |
| Unit 5 | 使用 `grill-me` + `grilling` | 逐个回答高影响问题，纠正 Codex 的理解，确认第一版范围与验收标准 | 把讨论整理成需求文档；确认后再交给新 task 规划和实施 |

课程 repo 只提供说明、来源和提示词。Skill 安装在自己的 Codex 环境中；Skill 产生的个人学习材料写入个人 Obsidian，不写回课程 repo。

## 怎样叫它开始工作

Skill 不一定会自己启动。课程中使用下面的自然语言即可；支持斜杠命令的 Codex 也可以输入 `/teach` 或 `/grill-me`。

| Skill | 可以怎样对 Codex 说 |
| --- | --- |
| `teach` | “请明确使用 teach，在我的个人学习区教我理解 repo 和 commit 的区别。” |
| `aihot` | “请使用 aihot 查一下今天值得关注的 AI 资讯，并保留原始来源链接。” |
| `writing-great-skills` | “请使用 writing-great-skills 检查这份 Skill 草稿。” |
| `skill-installer` | “请使用 skill-installer 从这个固定 GitHub 路径安装，不要搜索同名替代品。” |
| `skill-creator` | “请使用 skill-creator 建立并检查这份 mini Skill。” |
| `compile-raw-to-wiki` | “请明确使用 $compile-raw-to-wiki，把这几篇 Raw 逐篇编译进我已有的同一套 Wiki。” |
| `diagnosing-bugs` | “请使用 diagnosing-bugs，先复现和定位这个错误，不要直接猜原因。” |
| `playwright-cli` | “请使用 playwright-cli 在真实浏览器中检查这个页面，并报告证据。” |
| `grill-me` | “请使用 grill-me，一次问我一个问题，把这个模糊想法整理成可实施的需求文档；第一版已经足够清楚时主动停止追问。” |

人要明确提出目标，并检查结果；Skill 只是让 Codex 使用一套更稳定的工作方式，不会替人决定什么值得做。

## 分批准备

### Unit 0：只准备两个

只安装并验证：

```text
teach
aihot
```

打开 [Unit 0 人读页](course-workspace/units/00-workspace-entry/STUDENT.md)，直接使用页面内“第一段：检查与安装”和“第二段：新 task 验证”两个一键复制块。安装后需要新开一个 Codex task，才能确认新 Skill 已进入可用列表。

`teach` 会把当前目录当成持续学习空间。课程中使用它时，工作目录必须位于个人 Obsidian 的 `Learn/Agent 101/`，不要让它在课程 repo 中创建学习文件。

### Unit 3：写 Skill 前准备

Unit 3 同时使用两个 Skill，但职责不同：`writing-great-skills` 检查方法是否可预测、完成标准是否可验证以及内容是否需要删减；当前 Codex 自带的 `skill-creator` 决定目录、frontmatter、`agents/openai.yaml` 和校验方式。两者发生结构或调用机制冲突时，以当前 Codex 规则为准，并把冲突写进报告。

把下面这段发给 Codex：

```text
请先读取课程 repo 根目录的 SKILLS.md，只准备 Unit 3 需要的 Skill。

1. 检查 Codex 自带的 skill-installer 和 skill-creator 是否可用，不要重复安装它们；skill-installer 只用于固定 GitHub 来源，不用于启用本地草稿。
2. 从下面的固定来源安装 writing-great-skills：
   https://github.com/mattpocock/skills/tree/main/skills/productivity/writing-great-skills
3. 如果同名目录已经存在，不要覆盖；先报告现有路径和冲突。
4. 安装后检查 SKILL.md 和 GLOSSARY.md 是否存在。
5. 不要修改课程 repo，不要 commit 或 push。

最后报告：每项是“Codex 自带 / 已存在 / 本次安装 / 需要协助”，以及实际本地路径。
```

安装完成后新开 Codex task，再进入 Unit 3。Unit 3 写出的个人 Skill 以 Obsidian 中的目录为唯一正文，试编通过并得到明确同意后，再链接到 `~/.agents/skills/`。

### Unit 4：网页开发前准备

把下面这段发给 Codex：

```text
请先读取课程 repo 根目录的 SKILLS.md，只准备 Unit 4 需要的工具。

1. 检查 Node.js 是否为 20 或更高版本；不满足时报告版本并停下。
2. 从固定来源安装 diagnosing-bugs：
   https://github.com/mattpocock/skills/tree/main/skills/engineering/diagnosing-bugs
3. 从固定来源安装 playwright-cli Skill：
   https://github.com/microsoft/playwright-cli/tree/main/skills/playwright-cli
4. 检查 playwright-cli 命令；缺少时按 Microsoft 官方 README 执行 `npm install -g @playwright/cli@latest`。不要使用 sudo；若权限失败，报告准确错误并停下。
5. 运行 playwright-cli --help 验证命令可用。
6. 如果同名目录已经存在，不要覆盖。不要修改课程 repo，不要 commit 或 push。

最后报告：Node.js 版本、两个 Skill 的实际路径、playwright-cli --help 的返回结果，以及需要协助的事项。不要修改或停止已有端口进程；Unit 4 使用 `COMPANION_PORT=<空闲端口>` 选择其他端口。
```

安装完成后新开 Codex task，再进入 Unit 4。

### Unit 5：需求澄清开始前准备

`grill-me` 的正文会调用同一仓库中的 `grilling`，因此两者必须一起安装。把下面这段发给 Codex：

```text
请先读取课程 repo 根目录的 SKILLS.md，只准备 Unit 5 需要的 Skill。

从 mattpocock/skills 的固定路径同时安装：
- skills/productivity/grill-me
- skills/productivity/grilling

如果任一同名目录已经存在，不要覆盖；先报告冲突。安装后检查两个目录中都存在 SKILL.md。不要修改课程 repo，不要 commit 或 push。

最后报告两个实际本地路径，并说明需要新开一个 Codex task 后再使用。`grill-me` 是入口，`grilling` 提供单问单答的实际追问规则；课堂最低产物是 `PROJECT-REQUIREMENTS.md`，不是必须完成代码。
```

## 怎样判断“安装好了”

不要只看 Codex 说“完成了”。至少检查四件事：

1. 来源与本页一致，不是搜索结果里的同名项目。
2. Codex 报告了真实本地路径，目录中存在 `SKILL.md`。
3. 安装后新开 Codex task，新 task 能列出或读取该 Skill。
4. 在对应 Unit 的真实任务中使用一次，并由人判断它有没有改善工作方式。

前 3 项只证明“可以使用”，第 4 项才证明“在这门课里有价值”。

## 遇到问题时

- **同名 Skill 已存在**：不覆盖。让 Codex 比较来源和文件差异，再由人决定保留还是更新。
- **GitHub 或 AI Hot 无法访问**：记录准确网址和错误；先继续不依赖该 Skill 的部分，交给老师现场处理。
- **新 task 仍看不到 Skill**：先检查安装目录是否属于当前 Codex，再完全退出并重新打开 Codex；仍失败就保留为“需要协助”。
- **Node.js 版本不足或 npm 权限失败**：不要使用 `sudo` 硬装，记录版本和错误，在 Unit 4 前处理。
- **外部 Skill 要求登录、密钥、上传私人文件或执行不明脚本**：停止，不执行，由人检查来源和影响。

课程结束时，不以“装了多少个”为成绩。真正的完成信号是：你知道什么时候该调用哪一个 Skill，也知道什么时候不该让它接手。
