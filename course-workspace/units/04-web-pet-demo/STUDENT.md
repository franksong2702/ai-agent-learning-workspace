# Unit 4：一起改造一个 AI 网页宠物

## 这次要做什么

你会打开老师提供的预制网页宠物，用 Codex 先看懂组件，再完成一个页面可见的改动，并让宠物通过 DeepSeek 返回一次真实回复。

这不是从零写完整网站。老师发布的代码 repo 应该已经包含外观、动画、聊天界面、模拟回复和 DeepSeek 接口；如果还没有可访问的 GitHub 地址，本单元保持未开始。重点是体验一条真实开发路径：

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
- Node.js 和 npm 可用。
- 老师已准备 DeepSeek API key；key 不写入聊天、Markdown、截图或 GitHub。
- 两个人都能打开同一个 GitHub repo，并知道各自准备修改哪一部分。

如果老师还没有提供可访问的 GitHub 地址，或两个人中有一人打不开 repo，停下来记录为“代码 repo 未发布或权限阻塞”。不能用老师本机的本地目录代替两个人的 GitHub 访问证据。

如果代码 repo 还没有下载，把老师提供的 GitHub 地址交给 Codex，让它 clone 到 `~/Projects/ai-pet-demo/`。下载完成后再继续。

这里的 `Node.js` 是运行本地服务的环境，`npm` 用来安装和执行项目命令，`mock` 是不调用付费模型的模拟回复，`branch` 是两个人各自修改代码的分支。页面里的 provider / model 分别表示当前连接方式和具体模型。

## 先看见，再理解

在 `~/Projects/ai-pet-demo/` 中告诉 Codex：

```text
请先读取 README.md、AGENTS.md 和 docs/COMPONENT-MAP.md，安装依赖并启动网页宠物。先不要改代码，也不要 commit 或 push。请告诉我打开哪个网址，并用中文解释宠物形象、聊天气泡、mock 回复和 DeepSeek 接口分别在哪里。
```

打开页面后，先完成三件事：

1. 切换至少两套皮肤。
2. 给宠物发送一句话，确认 mock 回复能出现。
3. 点击“让 Codex 改这个演示”，看懂人和 Codex 的分工。

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

涉及 branch、commit 或 push 时，先让 Codex 检查 `git status` 并解释影响；得到老师当场确认后再执行。

两个人先各自完成小分支和 Pull Request，再由老师指定合并顺序。第二个合并前必须更新到第一个合并后的主分支并重新检查；出现同文件冲突时停止，由两个人一起决定保留什么，不让 Codex自行覆盖。

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
  VALIDATION-REPORT.md
  个人学习记录和反思

<个人 Obsidian 知识库>/Projects/AI Agent Learning Workspace/
  课程入口、协作计划和明确要求共享的验证摘要
```

每个人都从 [验证摘要模板](templates/VALIDATION-REPORT.md) 复制一份到自己的 `Learn/Agent 101/Unit 4/VALIDATION-REPORT.md`。老师明确要求共享时，再只提交不含隐私和 key 的短摘要；个人完整报告不复制到共享区。

两个人确认分工后，由老师的 Codex 根据 [协作计划模板](templates/COLLABORATION-PLAN.md) 写入 `course-workspace/artifacts/unit-04-collaboration.md`。其他 Codex 没有公共写入权限时，只在自己的输出目录提交提案，由老师汇总。

API key 只在代码 repo 的 `.env.local`，不进入以上任何 Markdown 文件。

## 完成标准

- 网页宠物可以在本机打开，mock 路径仍可用于排障。
- 页面上能看到一个由两个人共同确认的小改动。
- 两个人的修改范围没有互相覆盖，并留下协作记录。
- 真实 GitHub 协作已有 branch、commit SHA、Pull Request 和另一人的 review 证据；若只做本地练习，必须明确写“GitHub 协作未完成”。
- `npm run check` 通过。
- 页面完成一次 DeepSeek 真实文本往返，状态和模型可见。
- 真实模型回复气泡显示 DeepSeek 来源；mock 回复显示“模拟回复”，两者不会混淆。
- 每个人的个人知识库中都有 `Learn/Agent 101/Unit 4/VALIDATION-REPORT.md`，记录输入、页面结果、检查命令和人工判断，且不含密钥。
- 能说出这个宠物的一条能力边界，以及界面怎样避免让人过度相信它。
