---
type: student-preflight-checklist
project: AI Agent Learning Workspace
status: active
updated: 2026-07-10
audience: students
---

# Agent 101 课前一天确认清单

这份清单请在正式上课前一天完成。

它不是作业，也不是考试。目的只有一个：提前发现账号、网络、电脑和工具问题，避免正式上课时间被安装和排障占掉。

## 怎么回复老师

完成后，请按这个格式回复：

```text
姓名：

绿色：已经确认可用的项目
-

黄色：不确定，需要老师现场看一下的项目
-

红色：现在明确不可用的项目
-

我准备带到课堂的一篇文章 / 链接：

我想让 Agent 帮我做的一个兴趣方向：
```

不要把密码、验证码、API key、支付信息发给老师或 Agent。

## 让 Agent 帮你做准备

如果老师已经发给你 Pre-Lite workspace，请先打开 [Agent 101 课前准备入口](../README.md)。

如果你要把路径发给 Agent，用这一行：

```text
pre-lite-workspace/README.md
```

这条 Agent 辅助路径有两个前置条件：

- 你至少有一个可用 Agent：Codex / Claude Code / Hermes 任意一个能对话。
- 你的 Agent 能看到这份 workspace，或者你能把提示词复制给它。

如果 Agent 还不能用，就先自己按这份清单标绿 / 黄 / 红。Agent 不可用这件事本身就标成黄色或红色。

使用方式：

- 打开 Pre-Lite workspace 或老师发你的这份 Markdown 文件。
- 优先把 [课前准备 Agent 提示词](../prompts/preflight-agent-prompt.md) 发给 Agent。

如果你要把路径发给 Agent，用这一行：

```text
pre-lite-workspace/prompts/preflight-agent-prompt.md
```

- 如果你暂时打不开上面的文件，再把下面这段话直接发给 Agent。
- 跟着 Agent 一项一项检查。
- 遇到账号、密码、验证码、API key、支付信息时，不要发给 Agent，先停下来问老师。

如果 Agent 能读本地文件，可以把这个 workspace 路径告诉它：

```text
pre-lite-workspace/
```

同时告诉它 checklist 在这里：

```text
pre-lite-workspace/materials/day-minus-1-preflight-checklist.md
```

可以直接复制给 Agent 的备用提示词：

```text
请你陪我完成 Agent 101 课前一天确认清单。

请先读取或参考这份文件：
pre-lite-workspace/materials/day-minus-1-preflight-checklist.md

如果你能读取 workspace，也请参考：
pre-lite-workspace/prompts/preflight-agent-prompt.md

你的任务不是替我做决定，也不是直接乱改我的电脑配置。
请你按清单逐项带我检查，并把每一项记录成三类：

绿色：已经确认可用
黄色：我不确定，需要课堂上让老师看
红色：现在明确不可用

如果需要我运行命令，请一次只给一个命令，并告诉我要把哪几行结果贴回来。
如果涉及密码、验证码、API key、付款信息、账号安全设置，请提醒我不要发给你，并让我先问老师。

最后请帮我整理一份可以发给老师的课前确认回复，格式包括：
姓名：
绿色：
黄色：
红色：
我准备带到课堂的一篇文章 / 链接：
我想让 Agent 帮我做的一个兴趣方向：
```

## 0. 通过标准

正式上课前，至少要做到：

- [ ] 电脑能开机、联网、充电。
- [ ] 浏览器能打开 GitHub、Google、AI Hot、X.com。
- [ ] 至少一个 Agent 工具能正常对话。
- [ ] Obsidian 能打开。
- [ ] GitHub 账号能登录。
- [ ] Node.js 能运行，或已经把 `node -v` / `npm -v` 的报错记录下来。
- [ ] 准备好一篇你想在课上处理的 AI 文章或链接。
- [ ] 不需要自己准备 DeepSeek API key；老师会在课堂上提供。

如果有 1-2 项没完成，也没关系，标成黄色或红色。不要为了“全绿”去乱改配置。

## 1. 电脑与设备

- [ ] 带上电脑。
- [ ] 带上充电器。
- [ ] 电脑有足够电量。
- [ ] 能连接 Wi-Fi。
- [ ] 浏览器能正常打开网页。
- [ ] 麦克风、摄像头、扬声器基本可用。
- [ ] 能找到下载文件和本地文件夹。
- [ ] 乐乐如果想做宠物形象或视觉设计，带上 iPad / 画图工具 / 参考图。

不需要提前学会命令行。会打开电脑、浏览器和文件夹就够了。

## 2. 浏览器与账号

- [ ] Chrome 或常用浏览器已安装。
- [ ] Gmail / Google 账号可以登录。
- [ ] GitHub 账号可以登录。
- [ ] ChatGPT / Codex / Claude Code / Hermes 中至少一个 Agent 工具可以使用。
- [ ] 如果有老师发来的 GitHub repo 或 workspace 链接，能打开。
- [ ] 不把账号密码、验证码、订阅信息写进聊天或笔记。
- [ ] Chrome Web Store 能打开，方便安装 Obsidian Web Clipper 等浏览器插件。

如果账号被风控、验证码收不到、登录失败，请标红，不要反复尝试到锁号。

## 3. 网络与访问测试

请逐个打开：

- [ ] GitHub: `https://github.com`
- [ ] Google: `https://www.google.com`
- [ ] AI Hot: `https://aihot.virxact.com/`
- [ ] X.com: `https://x.com`
- [ ] ChatGPT 或你的 Agent 工具入口。
- [ ] 如果你平时需要 VPN / 代理，请确认它已经可用。

记录结果：

```text
GitHub：
Google：
AI Hot：
X.com：
Agent 工具：
VPN / 代理：
```

如果某个网站打不开，只写“打不开 + 看到的错误”，不要现场自己乱改代理、路由器或系统网络配置。

Tailscale、手机远程访问 Codex / Hermes 属于扩展能力。老师要求时再确认，不作为课前必过项。

## 4. Agent 工具最小测试

打开你要用的 Agent 工具，发送这句话：

```text
你好。我在准备 Agent 101 课程。请用一句话告诉我：你能帮我把一个想法变成什么样的文件或产物？
```

确认：

- [ ] Agent 能回复。
- [ ] 回复是中文或你能看懂的语言。
- [ ] 你知道怎么新开一个对话。
- [ ] 你知道怎么复制 Agent 给出的文字。

不要求你提前学会所有功能。

## 5. Obsidian

- [ ] Obsidian 已安装。
- [ ] 能打开一个 Vault。
- [ ] 能新建或打开 Markdown 文件。
- [ ] 能看到文件夹列表。
- [ ] 你知道聊天窗口和 Obsidian 不是一回事：聊天用来沟通，Obsidian 用来保存结果。

建议先建一个自己的 Vault，里面可以先有这些文件夹：

```text
Inbox/
Learn/
  Wiki/
  Agent 101/
Projects/
Work/
Diary/
```

如果来不及建，先标黄色，课堂上会一起处理。

## 6. Obsidian Web Clipper

后面会用浏览器把文章保存到 Obsidian，所以请提前确认：

- [ ] Obsidian Web Clipper 已安装到浏览器。
- [ ] 浏览器工具栏里能找到它。
- [ ] 它能连接到你的 Obsidian Vault。
- [ ] 保存路径准备使用 `Inbox/Raw/`。
- [ ] 试着保存一篇普通网页，确认 Obsidian 里能看到 Markdown 文件。

建议保存格式：

```text
保存位置：Inbox/Raw/
标题：保留网页标题
正文：保留正文、原始链接和保存时间
```

如果 Web Clipper 装不上，先标黄色。课堂可以先用复制链接或手动保存文本的降级方法。

## 7. Claudian

Claudian 是 Obsidian 里的 Agent 桥接插件。它能让你在 Obsidian 里更自然地调用 Codex 或 Claude Code。

课前确认：

- [ ] Claudian 已安装。
- [ ] Claudian 能打开。
- [ ] 如果已经配置过，确认它能连接 Codex 或 Claude Code。

如果 Claudian 还没装好，不算失败。课堂可以直接用 Codex / Claude Code 操作同一批文件。

## 8. GitHub 与本地项目文件夹

GitHub 是课程里的协作和代码历史空间。

请确认：

- [ ] GitHub 能登录。
- [ ] 能打开老师发的 repo / workspace 链接。
- [ ] 能看到文件列表。
- [ ] 电脑上准备一个放代码项目的文件夹，例如 `Projects/`。
- [ ] 你知道 Obsidian Vault 和代码项目文件夹可以是两个不同地方。

网页宠物 demo 会用到 Node.js，所以这项比较重要。

请打开终端，分别运行：

```bash
node -v
npm -v
```

确认：

- [ ] Node.js 20 或更新版本已安装。
- [ ] `node -v` 能输出版本号。
- [ ] `npm -v` 能输出版本号。

如果命令报错，先不要自己乱装多个版本。把报错原样记录下来，课堂上可以让 Agent 根据报错带你安装或修复。

## 9. DeepSeek API

网页宠物练习会用到一次真实模型 API 回复。

DeepSeek API key 由老师提供，学生课前不需要自己注册或充值。

请你只确认：

- [ ] 知道 API key 不能发给 Agent、同学或写进 GitHub。
- [ ] 知道课堂上会把 key 放在本机 `.env.local` 或环境变量里。
- [ ] 如果看到 Agent 要你把 key 粘贴到聊天里，要先停下来问老师。

课堂可以先用本地假回复做演示；最终目标是让网页能收到一次真实模型回复。

## 10. 课前预读：AI Hot / X.com

请提前做一个很轻的预读任务：

- [ ] 打开 AI Hot: `https://aihot.virxact.com/`
- [ ] 找 1-2 篇你觉得有意思、看不懂但想弄明白，或觉得很有用的文章。
- [ ] 如果文章来自 X.com 作者，记录作者链接。
- [ ] 把文章链接发给老师，或保存到 Obsidian。

只使用上面这个入口。不要使用 `aihotx.com` 这类相似域名作为课堂入口。

你不需要提前读懂全文。只要带着一个真实兴趣进入课堂。

### 可以随便挑一篇看的文章

下面是从 AI Hot 里挑出来的浅层候选。你只需要选 1 篇，不需要读懂所有技术细节。

| 文章 | 你可能会感兴趣的原因 |
| --- | --- |
| [三周前，我不小心创办了一家小公司](https://extelligence.substack.com/p/i-accidentally-started-a-small-business) | 一个父亲用 AI 给孩子做沟通工具，是很真实的小故事。 |
| [TeXada：一个本地数学学习工具](https://x.com/OpenBMB/status/2075218678027850154) | 适合对数学、公式、学习工具有兴趣的人。 |
| [藏师傅PPT与Pencil结合使用技巧](https://x.com/op7418/status/2073020264083050811) | 适合想做 PPT、设计、展示的人。 |
| [Krea 2 身份保留功能上线](https://x.com/krea_ai/status/2074589965653303321) | 适合喜欢画画、角色、宠物形象的人。 |
| [人们如何使用Claude Cowork](https://claude.com/blog/how-people-are-using-claude-cowork) | 可以看看普通人把 AI 用在整理、写作、工作里的例子。 |
| [Google 更新隐私设置，默认用媒体数据训练 AI，用户可手动退出](https://techcrunch.com/2026/07/06/if-you-use-google-youre-training-its-ai-heres-how-to-opt-out) | 提醒自己用 AI 和互联网工具时，也要看隐私设置。 |

如果你不知道选哪篇，优先选：

- 喜欢设计 / 画画：看 Krea 或藏师傅 PPT。
- 想看 AI 怎么解决真实问题：看“三周前，我不小心创办了一家小公司”。
- 对学习工具感兴趣：看 TeXada。
- 对隐私和账号安全敏感：看 Google 隐私设置。

### 可以关注的中文 AI KOL

下面账号是 AI Hot 近期较常收录的 X.com 作者。不要全部关注，先选 3-5 个就够。

| 作者 | X.com | 适合看什么 |
| --- | --- | --- |
| 宝玉 | [@dotey](https://x.com/dotey) | AI 新闻、产品观点、中文讨论。 |
| Berry Xia | [@berryxia](https://x.com/berryxia) | 有趣 AI 工具、开源项目、学习资料。 |
| 歸藏 | [@op7418](https://x.com/op7418) | AI 绘图、PPT、图文设计。 |
| 小互 | [@xiaohu](https://x.com/xiaohu) | AI 产品、个人创作、内容工具。 |
| 向阳乔木 / Vista | [@vista8](https://x.com/vista8) | 工具体验、模型评测、开发者观察。 |
| 邵猛 | [@shao__meng](https://x.com/shao__meng) | AI 工具案例、开发者经验。 |
| 阿易 AI Notes | [@AYi_AInotes](https://x.com/AYi_AInotes) | AI 新闻、模型和工具观察。 |
| 数字生命卡兹克 | [@Khazix0918](https://x.com/Khazix0918) | AI Hot、工具体验、个人实践。 |
| 洪明 | [@hongming731](https://x.com/hongming731) | AI 早报、模型和工具动态。 |
| karminski | [@karminski3](https://x.com/karminski3) | AI 工具、工程观察、实测。 |

## 11. 个人兴趣材料

请准备一个你想让 Agent 帮你做的方向。

可以是：

- AI 新闻整理。
- 个人网站或作品展示。
- 宠物形象设计。
- 无畏契约成长日志。
- 游戏复盘。
- 音乐学习或兴趣资料整理。
- 课堂笔记或语音笔记。

写一句话就够：

```text
我想让 Agent 帮我：
```

## 12. 如果卡住

不要把课前准备变成排障大战。

卡住时只需要记录：

```text
我卡在：
我看到的错误：
我已经试过：
我没有继续乱改：
```

带着这个记录来上课，比自己乱试半天更有价值。
