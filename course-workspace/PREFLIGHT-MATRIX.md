# 课前准备矩阵

这份矩阵给老师和助教使用，用来在开课前确认环境、账号和工具是否真的可用。它不是学生作业，也不是课程评分表。

每一项都要有真实证据。能在浏览器里打开，不等于 Terminal 可用；Codex 能运行，不等于 GitHub 账号没有验证阻断。

## 通过口径

| 状态 | 含义 | 课堂处理 |
| --- | --- | --- |
| 通过 | 学生本人在自己的电脑上完成验证 | 进入对应 Unit |
| 需要协助 | 有明确错误、缺配置或账号阻断 | 先排障或使用降级路径 |
| 暂缓 | 本次课不依赖，或时间不足 | 不占用主线时间 |

不要使用笼统的“没问题”。必须写清实际路径、网址、命令、文件或截图证据。

## 硬前置

| 项目 | 验证动作 | 通过标准 | 失败处理 |
| --- | --- | --- | --- |
| Codex 可用 | 学生打开 Codex，发一条普通中文问题 | 能正常收到回复 | 先排查登录、额度、网络；未通过时不进入 Agent 文件工作流 |
| GitHub 网页 | 浏览器打开本课程 repo、知识库 repo、AI Pet repo | 三个公开 repo 都能打开 | 记录打不开的网址和浏览器错误；不要现场等待邀请 |
| GitHub 账号 | 学生登录自己的账号，打开 profile 或 settings | 不触发邮箱、验证码或风控阻断 | 账号阻断时不强推 fork / Pull Request；Unit 4 可先做本地体验 |
| Terminal GitHub | 在 Terminal 运行 `git ls-remote https://github.com/franksong2702/ai-agent-learning-workspace.git HEAD` | 返回远端 SHA 或 HEAD 信息 | 检查代理是否覆盖 Terminal；不要把 Codex 可用误判为 Terminal 可用 |
| Obsidian Vault | 学生打开长期使用的个人 Vault | Vault 能在 Obsidian 左侧看到，并有明确绝对路径 | 没有长期 Vault 时先创建或选择；不要让普通文件夹冒充 Vault |
| 课程 Workspace | Codex 检查 clone 位置和 remote | 位于 `<Vault>/Projects/AI Agent Learning Workspace/`，remote 指向课程 repo | 路径错误时停下报告；不覆盖、不删除、不重复 clone |
| 个人学习区 | Obsidian 中确认 `Learn/Agent 101/` 可写 | 能创建或打开一个测试 Markdown | 不能写入时先处理 Vault 权限和路径 |
| Web Clipper | 用课程模板真实抓取一篇网页 | Raw 位于 `Inbox/Raw/`，正文、`source`、`clipped`、`status` 存在 | 字段缺失时先修模板或补做 normalize，不进入 Wiki 编译 |

## Unit 相关前置

| Unit | 前置 | 通过标准 | 降级路径 |
| --- | --- | --- | --- |
| Unit 0 | `teach`、`aihot` | 新 Codex task 能读取；AI Hot 查询有原始来源链接 | 缺任一项时记录为需要协助；先完成不依赖该 Skill 的检查 |
| Unit 1 | 文章材料可读，`teach` 可用 | 学生能自然提问，并能用自己的话复述核心方法 | `teach` 不可用时仍可用普通 Codex 问答，但必须写明未验证 |
| Unit 2 | Web Clipper Raw | 至少一篇真实 Raw 可打开，字段和来源齐全 | Raw 不合格时不让 Agent 编译；先修抓取模板 |
| Unit 3 | Unit 2 有真实 Wiki 输出 | 能打开 Wiki 规则、Index、Log 和至少一页知识内容 | Unit 2 没走完整闭环时，只讲 Skill 概念，不现场写 Skill |
| Unit 4 | Node.js、AI Pet repo、模型 key | `npm run check` 通过；网页 mock 可用；key 只在 `.env.local` | GitHub 账号阻断时做本地体验；真实 API 阻断时只保留 mock 基线 |
| Unit 5 | `grill-me` 与 `grilling` | 新 task 能使用，且知道最低产物是需求文档 | 时间不足时只做需求澄清，不进入代码实施 |

## 课前收集材料

每个学生提前准备 5-10 个自己真正感兴趣的网页链接。链接不要求高级，关键是本人愿意继续读。

可选主题：

- 偶像、音乐、舞台、周边、粉丝文化。
- 游戏、角色、战术、赛事、装备、成长记录。
- 学校学习、专业方向、社团项目、实习准备。
- 想做的小工具、网页、机器人或个人自动化。

老师课前只检查来源是否能打开，不替学生决定主题。课堂中优先使用学生兴趣链接，难文章保留为老师参考或进阶材料。

## 失败记录格式

排障时只记录事实，不写成笼统判断：

```markdown
## 需要协助

- 项目：
- 发生位置：浏览器 / Codex / Terminal / Obsidian / GitHub / 代码 repo
- 操作：
- 准确错误：
- 已尝试：
- 当前降级路径：
```

如果同一问题超过 10 分钟仍未解决，老师应切换到降级路径，避免学生长时间等待 Agent 或复制命令。
