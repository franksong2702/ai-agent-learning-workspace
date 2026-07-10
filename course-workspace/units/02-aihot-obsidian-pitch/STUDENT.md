# Unit 2：让 Agent 设计并完成第一次 Wiki 编译

Unit 1 已经读懂了 Karpathy 的 LLM Wiki 方法。Unit 2 不再花时间编写一套复杂的编译提示词，也不要求你先设计目录和 Schema。

这次只给 Agent 两份材料：

```text
方法参考：Karpathy 的 LLM Wiki 文章
待处理来源：Web Clipper 保存的一篇新 Raw
```

Agent 负责阅读方法、设计最小结构、创建或更新文件并汇报；你负责确认输入、打开结果和判断是否有用。

## 硬前置：Web Clipper 已经准备好

进入本单元前必须完成 [Obsidian Web Clipper 安装与配置](materials/WEB-CLIPPER-SETUP.md)：

- 从官方入口安装扩展；
- 选择自己的长期 Obsidian Vault；
- 使用课程的最小模板；
- 保存路径设为 `Inbox/Raw/`；
- frontmatter 至少保留 `type`、`source`、`clipped` 和 `status`；
- 已经测试抓取过一篇文章，并在 Obsidian 中确认正文和来源链接存在。

没有一个能真实打开的 `Inbox/Raw/*.md` 文件，就不进入编译。

## 先准备一篇新 Raw

1. 从自己感兴趣的网页、[AI Hot](https://aihot.virxact.com/) 或 [备用文章池](materials/ARTICLE-CANDIDATES.md) 找到一篇文章。
2. 如果线索来自聚合页，继续打开原作者页面。
3. 用 Web Clipper 保存到个人 Vault 的 `Inbox/Raw/`。
4. 在 Obsidian 中打开文件，确认正文、标题和 `source` 原始链接。

这篇 Raw 不能使用 Unit 1 的 Karpathy 文章。Karpathy 文章只负责告诉 Agent“怎样建立 Wiki”，新 Raw 才是这一次要编译的内容。

## 一键复制给 Codex

```text
请开始 Agent 101 Unit 2：根据现成方法完成第一次 Wiki 编译。

先读取课程 repo 中：
- course-workspace/units/02-aihot-obsidian-pitch/STUDENT.md
- course-workspace/units/02-aihot-obsidian-pitch/AGENT-TASK.md
- course-workspace/units/02-aihot-obsidian-pitch/materials/WEB-CLIPPER-SETUP.md
- course-workspace/units/01-agent-behavior-guide/materials/KARPATHY-LLM-WIKI-EN.md
- course-workspace/units/01-agent-behavior-guide/materials/KARPATHY-LLM-WIKI-ZH.md

请我确认：
1. 个人 Obsidian Vault 的绝对路径；
2. Web Clipper 保存的新 Raw 文件绝对路径；
3. Raw 中记录的原文链接；
4. Wiki 输出根目录为 <个人 Obsidian Vault>/Learn/Wiki/。

如果 Web Clipper 没有完成安装和配置，Raw 不在 Inbox/Raw/、正文为空或 source 缺失，请准确报告并停止，不要编造或改用聊天内容代替 Raw。

把 Karpathy 文章当作方法参考，把新 Raw 当作待编译来源。请根据 Karpathy 的思路，自行设计并执行一套最小、可持续维护的 Wiki 编译：
- Raw 只读，不修改、不移动、不删除；
- 如果 Learn/Wiki/ 已有结构，先读取并沿用，不另建第二套；
- 如果还没有 Wiki，自行创建必要的目录和文件，并用一份规则说明记录你采用的结构和维护方法；
- 至少建立或更新索引、日志和这篇来源对应的知识页面；
- 只有确实有长期复用价值时才创建或更新概念页、实体页或比较页，不机械生成空页面；
- 每个重要结论保留来源，无法确认的内容明确标记。

不要让我先设计 Schema，不要要求我填写目录表，也不要使用课程里的旧编译规则、学习卡或 Pitch 模板。完成文件操作后重新打开所有创建或更新的文件进行核对。

最后向我汇报：
1. 使用了哪份方法材料和哪份 Raw；
2. 创建了哪些目录和文件；
3. 更新了哪些已有文件；
4. 每个文件为什么需要；
5. 哪些判断仍然不确定；
6. Raw 是否保持不变；
7. 我应该亲自打开哪三个文件检查。

等我检查后，根据我的反馈做一次必要修正，并把本次编译和修正写入 Wiki 日志。不要修改课程 repo，不 commit、不 push、不删除文件。
```

## 人要做的检查

Agent 汇报后，亲自在 Obsidian 中打开：

1. 这篇 Raw，确认没有被改写；
2. Wiki 索引，确认能找到这次新增或更新的知识；
3. 至少一页来源摘要、概念页或实体页，确认内容有来源且读得懂。

然后明确告诉 Agent：

- 哪些结果可以保留；
- 哪些地方需要修改；
- 哪些内容仍然不确定。

Agent 根据反馈修正一次并更新日志，整个 loop 才算走完。

## 什么算完成

- Web Clipper 已安装、配置并通过真实抓取检查。
- 新 Raw 位于个人 `Inbox/Raw/`，正文和原始链接可以打开。
- Agent 实际读取了 Karpathy 方法材料和新 Raw。
- `Learn/Wiki/` 中存在可持续使用的规则说明、索引、日志和这篇来源对应的知识页面。
- Raw 保持不变，重要结论能回到来源，概念页和实体页没有被机械滥建。
- 人亲自打开三个文件并作出判断；Agent 根据反馈完成一次必要修正和日志更新。
- Agent 已报告实际路径、文件变化和不确定点。
- 本单元没有设计 Skill、生成学习卡或 Pitch，也没有修改课程 repo、commit、push或删除文件。

## 通向 Unit 3

Unit 3 不从空白开始写 Skill，而是回看本单元的简短提示词、Agent 实际执行、Wiki 文件变化、日志和人的修正，再使用 `writing-great-skills` 把真正有用的流程固化下来。
