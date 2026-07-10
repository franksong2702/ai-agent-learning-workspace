# Unit 2：AI Hot -> Obsidian -> 学习卡 -> Pitch

## 你要完成什么

从 [AI Hot](https://aihot.virxact.com/)、原作者页面或老师提供的候选材料中选一篇文章，把 Raw 资料变成一组可检查、可复用的个人知识文件，并用自己的话完成一次 60-90 秒 Pitch。

这里的 LLM Wiki 不是一个特殊软件。它是一种工作方式：保留 Raw 来源，让 Codex 按确认过的规则编译内容，再由人补充理解、纠错和下一步问题。

先用人话记住四个词：Raw 是刚抓下来的原始材料；编译结果是 Codex 按规则整理出的摘要、概念、实体和不确定点；学习卡加入了你自己的回答和检查；Pitch 是你用 60-90 秒讲给别人听的版本。

## 开始前需要有

- 已经能打开的个人 Obsidian 知识库。新建时默认可放在 `~/Obsidian/`，已有长期知识库不迁移。
- 能读写本地 Markdown 文件的 Codex。
- Unit 0 已安装并验证 `aihot`；概念需要进一步讲解时可以使用 `teach`。安装与用途见 [课程 Skill 地图](../../../SKILLS.md)。
- 一篇带原始链接的文章；没有自选材料时，从 [备用文章池](materials/ARTICLE-CANDIDATES.md) 选择。
- Obsidian Web Clipper 已安装，并按 [Web Clipper 准备页](materials/WEB-CLIPPER-SETUP.md) 完成一次测试抓取。
- 你愿意继续追问的主题名称。

## 三个位置不要混用

```text
<个人 Obsidian 知识库>/Learn/Wiki/<主题>/
  本单元全部个人产物

<个人 Obsidian 知识库>/Learn/Agent 101/
  课程笔记、反思和后续 Skill 练习

<个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/
  只读课程任务和模板
```

学习卡只保存在第一个位置。课程 repo 不保存学习卡副本。

## 课堂动作

1. 打开 [Web Clipper 准备页](materials/WEB-CLIPPER-SETUP.md)，确认测试抓取文件的标题、来源、frontmatter 和保存路径正确。
2. 使用 `aihot` 或 AI Hot 网页找到候选，选定文章并确认原始链接和主题名称；继续追到原作者页面。没有自选材料时打开 [备用文章池](materials/ARTICLE-CANDIDATES.md)。
3. 用 Web Clipper 把文章保存到 `<主题>/raw/`；如果使用已有 Raw，只读原文件并记录它的路径。
4. 打开 [编译规则模板](templates/COMPILATION-RULES.md)，让 Codex 生成一份个人编译规则草稿。
5. 先由你确认编译规则，再让 Codex 写出 `COMPILATION.md`，其中包含摘要、关键概念、关键实体、来源和不确定点。
6. 打开 [学习卡模板](templates/LEARNING-CARD.md)。Codex 必须先问你的理解、兴趣、疑问和修改意见，再完成学习卡。“还没弄懂”写你对内容的疑问；“修改意见”写编译文件中表达不准、来源不足或需要补充的地方。
7. 回看原文链接或 Raw 文件，核对学习卡中的至少一条事实，并写下你要求修改或补充的地方。
8. 打开 [Pitch 模板](templates/PITCH.md)，准备并讲出 60-90 秒版本。
9. 重新打开个人目录中的四个产物，确认课程 repo 没有被修改。

## 个人目录应能看到

```text
<个人 Obsidian 知识库>/Learn/Wiki/<主题>/
  raw/
  COMPILATION-RULES.md
  COMPILATION.md
  LEARNING-CARD.md
  PITCH.md
```

## 完成标准

- 上述四个 Markdown 产物都存在，Raw 文件或已有 Raw 路径可打开。
- `LEARNING-CARD.md` 中有你的回答，不是只有 Codex 的摘要。
- 你已经对照来源检查至少一条事实，并记录一处确认、修改或不确定点。
- 你能讲完 60-90 秒 Pitch，并能说清 Raw、编译结果和个人理解分别在哪里。
