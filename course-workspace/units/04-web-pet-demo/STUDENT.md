# Unit 4：一起改造一个 AI 网页宠物

## 这次要做什么

你会打开老师提供的预制网页宠物，用 Codex 先看懂组件，再完成一个页面可见的改动，并让宠物通过 DeepSeek 返回一次真实回复。

这不是从零写完整网站。公开代码 repo [franksong2702/ai-pet-demo](https://github.com/franksong2702/ai-pet-demo) 已经包含外观、动画、聊天界面、模拟回复和 DeepSeek 接口。重点是体验一条真实开发路径：

```text
提出一个小改动
-> Codex 解释相关组件
-> 两个人分开完成不冲突的部分
-> 在网页上一起检查
-> 接通一次真实模型回复
-> 用文件和页面结果留下证据
```

## 开始前需要有

- Unit 0 和 Unit 1 已完成，能让 Codex 读取本地文件并解释将要执行的动作。
- 学习 Workspace 位于个人 Obsidian 知识库的 `Projects/AI Agent Learning Workspace/`。
- 代码 repo 位于 `~/Projects/ai-pet-demo/`。
- Node.js 20 或更高版本和 npm 可用。
- 已按 [课程 Skill 地图](../../../SKILLS.md) 准备 `diagnosing-bugs`、`playwright-cli`，并验证 `playwright-cli --help` 可用。
- 老师已准备 DeepSeek API key；key 不写入聊天、Markdown、截图或 GitHub。
- 两个人都能打开公开 GitHub repo、登录自己的 GitHub 账号，并知道各自准备修改哪一部分。

如果有人打不开公开 repo，停下来记录具体网址和网络错误。不能用老师本机的本地目录代替真实 GitHub 访问证据，也不需要等待 repo 邀请。

如果代码 repo 还没有下载，先在 GitHub 网页 fork [franksong2702/ai-pet-demo](https://github.com/franksong2702/ai-pet-demo)，再让 Codex 把自己的 fork clone 到 `~/Projects/ai-pet-demo/`，并把老师 repo 设为只读 `upstream`。下载完成后再继续。

这里的 `Node.js` 是运行本地服务的环境，`npm` 用来安装和执行项目命令，`mock` 是不调用付费模型的模拟回复，`branch` 是独立的代码时间线。`class/2026-07` 是这次课程的组合版本，公开 `main` 始终保留干净脚手架。页面里的 provider / model 分别表示当前连接方式和具体模型。

## 一键复制给 Codex：开始 Unit 4

只复制一次。Codex 会先检查和解释，再停下来等你打开页面；后面的修改、API 接入和验证会继续在同一段对话中进行，不需要再找其他提示词文件。

```text
请带我完成 Agent 101 的 Unit 4。先不要改代码，也不要 commit 或 push。

请先读取：
- 当前 Unit 的 STUDENT.md 和 AGENT-TASK.md
- 课程 repo 根目录的 SKILLS.md
- 代码 repo ~/Projects/ai-pet-demo/ 中的 README.md、AGENTS.md、docs/COMPONENT-MAP.md、docs/API-GUIDE.md、docs/HUMAN-AI-INTERFACE.md

请严格按以下顺序协助：
1. 确认课程 repo 和代码 repo 的绝对路径；检查代码 repo 的 git status、origin、upstream、upstream/class/2026-07，以及 Node.js 20+、npm 是否可用。路径不存在或工作树有未说明的修改时先停下报告，不要另建一份代码 repo。
2. 在代码 repo 运行 npm install 和 npm run check。启动前检查端口；默认 4317 被占用时不要停止现有进程，使用 `COMPANION_PORT=<空闲端口> npm run dev`。
3. 启动网页后告诉我准确网址，用中文解释宠物形象、皮肤、聊天气泡、mock 回复和 DeepSeek 接口分别由什么负责，然后停下来让我亲自打开页面、切换皮肤并发送一条 mock 消息。
4. 我确认基线后，一次只问我一个页面可见的小改动。给一个推荐和理由，但允许我修改或否定。先说明准备修改的文件、页面变化和验证方法，等我确认后再改。
5. 如果两个人分别修改，先帮助我们从 `upstream/class/2026-07` 建立各自的小 branch，并划分不冲突的范围。遇到同一文件冲突时停止，不自行覆盖。
6. 报错时使用 diagnosing-bugs 先复现和定位；修改完成后运行 npm run check，并使用 playwright-cli 检查真实页面和桌面、移动视口。
7. 真实 API 是本 Unit 的完成条件。让我自己把老师提供的 key 放入被 Git 忽略的 .env.local；同时把 `COMPANION_LOG_DIR` 指向个人 Obsidian 的 `Learn/Agent 101/Unit 4/Logs/`。不要读取、显示或记录 key。按 API-GUIDE 接通 DeepSeek 后，让我亲自在网页发送一条新消息，并核对 provider、model 和非 mock 回复来源。
8. branch、commit、push 或 Pull Request 前，先解释影响并等待本人和老师对当前动作确认。只允许向个人 fork push；Pull Request 的目标必须是老师 repo 的 `class/2026-07`，不得以 `main` 为目标。
9. 把协作计划、交互设计记录和验证报告写到个人 Obsidian 的 `Learn/Agent 101/Unit 4/`，不要写回课程 repo。

每到需要我观察页面、选择目标、确认分工、填写 key 或批准 Git 动作时都停下来问我。最终明确区分：自动检查、我亲自看到的页面结果、真实 DeepSeek 往返、仍未验证项。
```

## 先看见，再理解

把上面的提示词发给 Codex。它完成基线检查并给出网址后，再亲自打开页面。

打开页面后，先完成三件事：

1. 切换至少两套皮肤。
2. 给宠物发送一句话，确认 mock 回复能出现。
3. 点击“让 Codex 改这个演示”，看懂人和 Codex 的分工。

页面报错或行为不符合预期时，让 Codex 使用 `diagnosing-bugs` 先复现和定位，不把猜测直接当原因。完成修改后使用 `playwright-cli` 检查真实页面、关键交互和桌面/移动视口；这两个 Skill 是开发过程中的反馈工具，不是独立教学单元。

切换宠物后，已经出现的历史消息保留创建时的署名，新回复使用当前宠物的署名。旧消息名字没有一起变化，是为了保留当时的说话者，不代表页面没有切换成功。

## 选择一个小改动

第一次只选一个页面可见的目标，例如：

- 修改宠物名字、欢迎语或说话风格。
- 选择或改造一套皮肤。
- 修改聊天气泡、状态文字或页面颜色。
- 增加一句“我不确定，需要你确认”的诚实回复。

不要一开始同时改皮肤、布局、服务端和 API。

## 两个人怎样合作

先用 [协作计划模板](templates/COLLABORATION-PLAN.md) 划分不冲突的工作。例如：

- 一个人负责外观、皮肤或气泡。
- 另一个人负责聊天性格、DeepSeek 接入或验证。

这只是示例，不是固定分工。两个人都要知道最终目标，并在合并结果前一起检查页面。

涉及 branch、commit 或 push 时，先让 Codex 检查 `git status`、`origin`、`upstream` 和 `upstream/class/2026-07` 并解释影响；得到本人和老师当场确认后，只推送到自己的 fork。

两个人分别从 `upstream/class/2026-07` 建立小 branch，并向老师 repo 的 `class/2026-07` 提交 Pull Request。老师指定合并顺序；第二个合并前必须从最新 `upstream/class/2026-07` 更新并重新检查。出现同文件冲突时停止，由两个人一起决定保留什么，不让 Codex 自行覆盖。整个过程中不修改老师 repo 的 `main`。

## 接通真实 DeepSeek 回复

先让 Codex 阅读代码 repo 的 `docs/API-GUIDE.md`。API key 只放在 `~/Projects/ai-pet-demo/.env.local`，不要发给 Codex 对话，也不要写进课程文件。

接通后必须亲自在网页里发送一句测试消息，并确认：

- 页面状态显示 DeepSeek 和当前模型。
- 回复来自真实 API，不是 mock 固定回复。
- `npm run check` 通过。
- 失败时能看见可理解的错误提示。

如果 key、额度或网络不可用，本单元只能记录为“API 阻塞”；mock 结果不能替代真实 API 完成条件。

## 设计一个可信的宠物

阅读代码 repo 的 `docs/HUMAN-AI-INTERFACE.md`，使用 [交互设计记录模板](templates/HUMAN-AI-DESIGN.md) 回答：

1. 宠物怎样表达情感，但不假装拥有真实感情？
2. 它不确定时会怎样说？
3. 哪些回复只是建议，需要由人判断？
4. 人怎样看见并验证它真的完成了动作？

## 文件放在哪里

```text
~/Projects/ai-pet-demo/
  真正的网页代码、测试和本地配置

<个人 Obsidian 知识库>/Learn/Agent 101/Unit 4/
  COLLABORATION-PLAN.md
  HUMAN-AI-DESIGN.md
  VALIDATION-REPORT.md
  Logs/
  个人学习记录和反思

<个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/
  只读课程入口和模板
```

每个人都从 [协作计划模板](templates/COLLABORATION-PLAN.md) 和 [验证摘要模板](templates/VALIDATION-REPORT.md) 生成个人 `COLLABORATION-PLAN.md`、`VALIDATION-REPORT.md`。两个人当面确认分工即可，不需要把这两份文件写回课程 repo。

API key 只在代码 repo 的 `.env.local`，不进入以上任何 Markdown 文件。

## 完成标准

- 网页宠物可以在本机打开，mock 路径仍可用于排障。
- 页面上能看到一个由两个人共同确认的小改动。
- 两个人的修改范围没有互相覆盖，并留下协作记录。
- 真实 GitHub 协作已有个人 fork、从 `class/2026-07` 建立的 branch、commit SHA、目标为 `class/2026-07` 的 Pull Request 和 review 证据；`main` 没有课堂改动。若只做本地练习，必须明确写“GitHub 协作未完成”。
- `npm run check` 通过。
- 页面完成一次 DeepSeek 真实文本往返，状态和模型可见。
- 真实模型回复气泡显示 DeepSeek 来源；mock 回复显示“模拟回复”，两者不会混淆。
- 每个人的个人知识库中都有 `Learn/Agent 101/Unit 4/VALIDATION-REPORT.md`，记录输入、页面结果、检查命令和人工判断，且不含密钥。
- 页面“写入 Markdown 日志”产生的文件进入个人 Obsidian 的 Unit 4 `Logs/`，不进入代码 repo 的 `notes/`。
- 课程 repo 没有因本单元产生个人作业、协作状态或验证摘要。
- 能说出这个宠物的一条能力边界，以及界面怎样避免让人过度相信它。
