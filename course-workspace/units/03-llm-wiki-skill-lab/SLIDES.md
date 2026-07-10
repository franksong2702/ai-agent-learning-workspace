---
marp: true
title: "Agent 101 - Unit 3"
description: "从一次真实流程到可重复 Skill"
paginate: true
---

# Unit 3

## 从一次真实流程到可重复 Skill

先完成实操，再用这一组 Slides 扩展视野。

---

# 刚才真正发生了什么

```text
第一次：解释方法，Agent 处理 1 篇 Raw

后来：明确调用同一 Skill，Agent 处理 4–5 篇 Raw
```

省下来的不是几个字，而是重新解释、重新猜边界和重新发明流程的成本。

---

# Skill 是保存下来的工作方法

一个 Skill 通常是一个文件夹：

```text
SKILL.md          必需：用途、触发和步骤
scripts/          可选：确定性脚本
references/       可选：参考资料
assets/           可选：模板和资源
agents/           可选：Codex 显示与调用策略
```

它把专门知识和可重复流程放进 Agent 可以按需读取的材料里。

来源：[Agent Skills 标准](https://agentskills.io/home) · [Codex Build Skills](https://learn.chatgpt.com/docs/build-skills)

---

# 靠谱，不等于每次输出一样

```text
相同的是：检查、判断、来源、边界、汇报
不同的是：文章主题、页面数量、新建或更新的决定
```

好 Skill 固定的是做事方法，不是把每个任务压成同一张表。

---

# Skill 有两种启动方式

| 方式 | 含义 | 适合什么情况 |
| --- | --- | --- |
| 显式调用 | 人明确点名 Skill | 有文件写入、批量处理或需要人工判断 |
| 隐式调用 | Agent 根据描述自行匹配 | 低风险、边界清楚、误触代价低 |

本单元关闭隐式调用，因为是否把 Raw 编译进 Wiki 应该由人决定。

---

# 找 Skill 的可靠顺序

```text
开放标准
→ 当前工具官方文档和官方 repo
→ 有明确维护者的开源 repo
→ AI Hot / X / 社区文章发现线索
→ 回到原始文件检查和试用
```

“很多人转发”只能证明它受关注，不能证明它适合你的电脑和资料。

---

# 官方和标准入口

- [Agent Skills 开放标准](https://agentskills.io/home)
- [Codex：Build Skills](https://learn.chatgpt.com/docs/build-skills)
- [OpenAI Plugins](https://github.com/openai/plugins)
- [Anthropic Skills](https://github.com/anthropics/skills)
- [Vercel Agent Skills](https://github.com/vercel-labs/agent-skills)

旧 `openai/skills` 仓库已经标记 deprecated；旧教程必须回到当前文档复核。

---

# GitHub 上值得研究的 repo

| Repo | 可以学什么 |
| --- | --- |
| [mattpocock/skills](https://github.com/mattpocock/skills) | Teach、写 Skill、调试等具体工作方法 |
| [obra/superpowers](https://github.com/obra/superpowers) | 多个 Skill 怎样组成开发流程 |
| [vercel-labs/skills](https://github.com/vercel-labs/skills) | Skill 的发现、添加、更新和管理工具 |
| [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) | Vercel 官方工程 Skill 示例 |

先读具体 `SKILL.md`，再看 Star 数。

---

# 打开一个 Skill repo，要看什么

1. 作者和原始来源能不能确认；
2. `SKILL.md` 什么时候触发、什么时候不用；
3. 引用了哪些脚本、资料、模板和工具；
4. 会不会联网、读私人文件、删除或改配置；
5. 是否和现有 Skill 重名或重复；
6. 能不能先用一个非敏感小任务试用。

收藏不是掌握，安装也不是验证。

---

# AI Hot：高效率发现线索

在 [AI Hot](https://aihot.virxact.com/) 进入“技巧”，搜索：

```text
skill
Agent Skill
Codex Skill
Anthropic Skill
```

然后继续追到原始 X 帖、作者主页和 GitHub repo。

AI Hot 是发现入口，不是安全认证。

---

# X 上可以从这些账号开始

| 账号 | 可以留意的方向 |
| --- | --- |
| [宝玉 @dotey](https://x.com/dotey) | Skill 写法、人机分工、Skill 与 Subagent |
| [歸藏 @op7418](https://x.com/op7418) | 开源视觉与内容生产 Skill |
| [Vista @vista8](https://x.com/vista8) | 设计和前端 Skill 的实际对比 |
| [邵猛 @shao__meng](https://x.com/shao__meng) | 开源 Skill 项目和方法整理 |
| [Berry Xia @berryxia](https://x.com/berryxia) | 创意工作流和 Skill 管理 |
| [Matt Pocock @mattpocockuk](https://x.com/mattpocockuk) | 本课程多个 Skill 的 repo 维护者 |

这些是线索来源，不是权威排名；真正使用前仍要回到原始文件。

---

# 最值得写的 Skill 往往来自自己

```text
真实做过
→ 发现重复
→ 保留稳定方法
→ 小范围试用
→ 根据偏差修改
→ 再扩大使用
```

Skill 不是收藏夹。

它是你愿意让 Agent 反复遵守的一套工作方式。
