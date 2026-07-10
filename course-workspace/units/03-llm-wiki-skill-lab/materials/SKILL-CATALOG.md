# Skill 来源与发现入口

课程中使用哪 8 个 Skill、在哪个 Unit 准备、怎样验证，统一看 repo 根目录的 [课程 Skill 地图](../../../../SKILLS.md)。本页回答另一个问题：课程结束以后，去哪里继续找？

## 先分清四层来源

| 层级 | 入口 | 适合做什么 |
| --- | --- | --- |
| 开放标准 | [Agent Skills](https://agentskills.io/home) | 理解 `SKILL.md`、可选脚本、参考材料和渐进披露。 |
| 当前工具官方 | [Codex Build Skills](https://learn.chatgpt.com/docs/build-skills)、[OpenAI Plugins](https://github.com/openai/plugins)、[Anthropic Skills](https://github.com/anthropics/skills)、[Vercel Agent Skills](https://github.com/vercel-labs/agent-skills) | 查看当前格式、官方示例和支持方式。 |
| 有维护者的开源 repo | [Matt Pocock Skills](https://github.com/mattpocock/skills)、[Superpowers](https://github.com/obra/superpowers)、[Vercel Skills CLI](https://github.com/vercel-labs/skills) | 学习具体工作流、组合方式和分发工具。 |
| 信息流与社区 | [AI Hot](https://aihot.virxact.com/)、X.com、GitHub 搜索 | 发现新线索，再回到原作者和原始 repo 核对。 |

顺序很重要：信息流负责发现，原始文件和真实试用负责建立信任。

## 当前值得认识的 GitHub repo

### 官方或标准入口

- [agentskills/agentskills](https://github.com/agentskills/agentskills)：开放标准和规范。
- [openai/plugins](https://github.com/openai/plugins)：当前 OpenAI 官方 Plugin 示例，Plugin 可以包含 Skill。
- [anthropics/skills](https://github.com/anthropics/skills)：Anthropic 的 Skill 示例、模板和规范入口。
- [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills)：Vercel 官方 Agent Skill 集合。

注意：旧 [openai/skills](https://github.com/openai/skills) 仓库目前已在 README 中标记 deprecated。看到旧教程时，应先回到当前 Codex 文档和 `openai/plugins`，不要机械照抄旧安装方式。

### 社区与方法库

- [mattpocock/skills](https://github.com/mattpocock/skills)：本课程 `teach`、`writing-great-skills` 等 Skill 的来源。
- [obra/superpowers](https://github.com/obra/superpowers)：用多个 Skill 组织软件开发方法的案例。
- [vercel-labs/skills](https://github.com/vercel-labs/skills)：用于发现、添加、更新和管理 Agent Skills 的开源 CLI；它是工具，不等于其中所有候选都经过课程审核。

Star 数只能说明关注度，不能代替适用性、安全检查和真实试用。

## 在 AI Hot 里怎样找

打开 [AI Hot](https://aihot.virxact.com/)，先进入“技巧”，再搜索：

```text
skill
Agent Skill
Codex Skill
Anthropic Skill
```

看到推荐后继续追三层：

```text
AI Hot 条目
→ 原始 X 帖或文章
→ 原作者 GitHub repo / SKILL.md
```

AI Hot 是高效率的线索入口，不是安全认证或自动安装清单。

## X 上可从 Skill 主题开始看的账号

以下账号来自本次对 AI Hot“技巧 + skill”条目的定向检查，作用是提供线索，不是权威排名：

| 作者或账号 | X | 可以留意的方向 |
| --- | --- | --- |
| 宝玉 | [@dotey](https://x.com/dotey) | Skill 写法、人机分工、Skill 与 Subagent 的区别。 |
| 歸藏 | [@op7418](https://x.com/op7418) | 开源视觉、配图和内容生产 Skill。 |
| Vista | [@vista8](https://x.com/vista8) | 设计 Skill、前端 Skill 对比和实际试用。 |
| 邵猛 | [@shao__meng](https://x.com/shao__meng) | 开源 Agent Skill 项目和方法整理。 |
| Berry Xia | [@berryxia](https://x.com/berryxia) | 创意工作流 Skill 和 Skill 管理案例。 |
| Matt Pocock | [@mattpocockuk](https://x.com/mattpocockuk) | `teach`、`writing-great-skills` 所在 repo 的维护者。 |

账号内容和推荐会变化。真正准备使用时，仍要回到原始 repo，检查当前文件、依赖、许可证和更新记录。

## 选择前问六个问题

1. 它解决的是我会重复遇到的问题，还是只是看起来厉害？
2. 我能读到完整的 `SKILL.md` 及其引用文件吗？
3. 作者、repo、版本和许可证是否可追溯？
4. 它会联网、读私人文件、改配置、删除、提交、推送或发消息吗？
5. 它是否和已有 Skill 重复或冲突？
6. 我能否先用一个非敏感小任务判断它真的改善了结果？

具体的暂存、审查和启用方式继续看 [外部 Skill 的导入与保存](IMPORT-AND-SAVE.md)。
