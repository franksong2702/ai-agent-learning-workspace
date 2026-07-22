# Unit 2：从兴趣文章开始第一次 Wiki 编译

Unit 2 的目标不是证明某篇方法文章很厉害，而是把一个你真的愿意看的网页，变成个人 Obsidian 里可以继续积累的 Wiki 内容。

这次按一个更容易理解的顺序来做：

```text
兴趣线索
→ Web Clipper 保存 Raw
→ 人先共同拆文
→ Agent 根据拆文结果编译 Wiki
→ 人打开文件检查
→ Agent 修正并写日志
```

Karpathy 只作为方法参考，不再作为本单元第一座要翻越的山。真正的输入是一篇与你兴趣有关、能激发问题的文章。

## 硬前置：Web Clipper 已经准备好

进入本单元前必须完成 [Obsidian Web Clipper 安装与配置](materials/WEB-CLIPPER-SETUP.md)：

- 从官方入口安装扩展；
- 选择自己的长期 Obsidian Vault；
- 使用课程的最小模板；
- 保存路径设为 `Inbox/Raw/`；
- frontmatter 至少保留 `type`、`source`、`clipped` 和 `status`；
- 已经测试抓取过一篇文章，并在 Obsidian 中确认正文和来源链接存在。

没有一个能真实打开的 `Inbox/Raw/*.md` 文件，就不进入编译。

## 先准备一篇兴趣文章

1. 从自己感兴趣的网页、[AI Hot](https://aihot.virxact.com/) 或 [备用文章池](materials/ARTICLE-CANDIDATES.md) 找到一篇文章。
2. 如果线索来自聚合页，继续打开原作者页面。
3. 用 Web Clipper 保存到个人 Vault 的 `Inbox/Raw/`。
4. 在 Obsidian 中打开文件，确认正文、标题和 `source` 原始链接。

这篇 Raw 不能使用 Unit 1 的 Karpathy 文章。可以选自己喜欢的娱乐、游戏、工具、产品、AI 新闻、学习方法或其他主题。文章不需要很深，但必须能让你说出：“我为什么想看它？”

## 先拆文，再编译

不要把文章一丢给 Agent 就让它直接生成 Wiki。课堂里先用 [拆文模板](templates/ARTICLE-DECOMPOSITION.md) 把判断写出来：

- 这篇文章到底在说什么；
- 哪些是事实，哪些是观点；
- 有哪些概念、实体或方法值得以后再找；
- 哪些内容还不确定；
- 这篇文章是否值得进入 Wiki。

拆文不是为了写漂亮笔记，而是让人先参与判断。Agent 后面编译 Wiki 时，必须把这份拆文结果当成输入，而不是重新自由发挥。

## 一键复制给 Codex

```text
请开始 Agent 101 Unit 2：从兴趣文章开始第一次 Wiki 编译。

先读取课程 repo 中：
- course-workspace/units/02-aihot-obsidian-pitch/STUDENT.md
- course-workspace/units/02-aihot-obsidian-pitch/AGENT-TASK.md
- course-workspace/units/02-aihot-obsidian-pitch/materials/WEB-CLIPPER-SETUP.md
- course-workspace/units/02-aihot-obsidian-pitch/templates/ARTICLE-DECOMPOSITION.md

请我确认：
1. 个人 Obsidian Vault 的绝对路径；
2. Web Clipper 保存的新 Raw 文件绝对路径；
3. Raw 中记录的原文链接；
4. 这篇文章为什么和我的兴趣有关；
5. Wiki 输出根目录为 <个人 Obsidian Vault>/Learn/Wiki/。

如果 Web Clipper 没有完成安装和配置，Raw 不在 Inbox/Raw/、正文为空或 source 缺失，请准确报告并停止，不要编造或改用聊天内容代替 Raw。

第一步不要直接编译 Wiki。请先在我的个人 Obsidian 中创建或更新：

<个人 Obsidian Vault>/Learn/Agent 101/Unit 2/ARTICLE-DECOMPOSITION.md

使用课程模板，带我共同拆文。你可以先根据 Raw 草拟，但必须让我确认或修改这些部分：
- 我为什么选这篇文章；
- 一句话主旨；
- 事实和观点；
- 概念和实体；
- 不确定点；
- 是否值得进入 Wiki，以及原因。

我确认拆文后，再根据 Raw 和 ARTICLE-DECOMPOSITION.md 执行最小、可持续维护的 Wiki 编译：
- Raw 只读，不修改、不移动、不删除；
- 如果 Learn/Wiki/ 已有结构，先读取并沿用，不另建第二套；
- 如果还没有 Wiki，自行创建必要的目录和文件，并用一份规则说明记录你采用的结构和维护方法；
- 至少建立或更新索引、日志和这篇来源对应的知识页面；
- 只有确实有长期复用价值时才创建或更新概念页、实体页或比较页，不机械生成空页面；
- 每个重要结论保留来源，无法确认的内容明确标记。

Karpathy 只作为方法参考：如果你需要，可以回看 Unit 1 的 Karpathy 材料来理解 Raw / Wiki / Schema 的思路，但不要把 Karpathy 当作本次待编译来源。不要让我先设计 Schema，不要要求我填写目录表，也不要使用课程里的旧编译规则、学习卡或 Pitch 模板。完成文件操作后重新打开所有创建或更新的文件进行核对。

最后向我汇报：
1. 使用了哪份 Raw；
2. ARTICLE-DECOMPOSITION.md 中哪些判断进入了 Wiki；
3. 创建了哪些目录和文件；
4. 更新了哪些已有文件；
5. 每个文件为什么需要；
6. 哪些判断仍然不确定；
7. Raw 是否保持不变；
8. 我应该亲自打开哪四个文件检查。

等我检查后，根据我的反馈做一次必要修正，并把本次编译和修正写入 Wiki 日志。不要修改课程 repo，不 commit、不 push、不删除文件。
```

## 人要做的检查

Agent 汇报后，亲自在 Obsidian 中打开：

1. 这篇 Raw，确认没有被改写；
2. `Learn/Agent 101/Unit 2/ARTICLE-DECOMPOSITION.md`，确认拆文判断说得通；
3. Wiki 索引，确认能找到这次新增或更新的知识；
4. 至少一页来源摘要、概念页或实体页，确认内容有来源且读得懂。

然后明确告诉 Agent：

- 哪些结果可以保留；
- 哪些地方需要修改；
- 哪些内容仍然不确定。

Agent 根据反馈修正一次并更新日志，整个 loop 才算走完。

## 什么算完成

- Web Clipper 已安装、配置并通过真实抓取检查。
- 新 Raw 位于个人 `Inbox/Raw/`，正文和原始链接可以打开。
- 人已经共同拆文，`ARTICLE-DECOMPOSITION.md` 记录了兴趣、主旨、事实和观点、概念和实体、不确定点以及是否进入 Wiki 的判断。
- Agent 实际读取了新 Raw 和拆文结果；Karpathy 只作为方法参考，不是本次待编译来源。
- `Learn/Wiki/` 中存在可持续使用的规则说明、索引、日志和这篇来源对应的知识页面。
- Raw 保持不变，重要结论能回到来源，概念页和实体页没有被机械滥建。
- 人亲自打开四个文件并作出判断；Agent 根据反馈完成一次必要修正和日志更新。
- Agent 已报告实际路径、文件变化和不确定点。
- 本单元没有设计 Skill、生成学习卡或 Pitch，也没有修改课程 repo、commit、push 或删除文件。

## 通向 Unit 3

Unit 3 不从空白开始写 Skill，而是回看本单元的兴趣选材、拆文模板、Agent 实际执行、Wiki 文件变化、日志和人的修正，再使用 `writing-great-skills` 把真正有用的流程固化下来。
