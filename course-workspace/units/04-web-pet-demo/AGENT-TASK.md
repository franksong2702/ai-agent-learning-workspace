# Codex Task：Unit 4 网页宠物命题开发

## 目标

帮助两个人在预制 `ai-pet-demo` 上完成一个可见小改动、一次协作检查和一次真实 DeepSeek 文本往返。先解释组件和影响，再修改；最后让人亲自操作网页验收。

## 开始前逐项确认

1. 学习 Workspace 的绝对路径，以及当前 Unit 的位置。
2. 代码 repo 的绝对路径，默认应为 `~/Projects/ai-pet-demo/`。
3. `node --version`、`npm --version`、`git status --short --branch` 的结果。
4. 两个人分别准备修改的目标和文件范围；若范围冲突，先重新划分。
5. `.env.local` 是否存在且被 Git 忽略。不要读取、显示或记录其中的 key。
6. 老师是否已明确允许当前 Git 动作；未确认时只做本地修改和验证。
7. 个人验证报告的唯一写入路径是否为 `<个人 Obsidian 知识库>/Learn/Agent 101/Unit 4/VALIDATION-REPORT.md`。

任何一个关键路径不存在，先停下报告，不要在别的位置新建替代目录。

## 必须先读

在代码 repo 中读取：

- `README.md`
- `AGENTS.md`
- `docs/COMPONENT-MAP.md`
- `docs/API-GUIDE.md`
- `docs/HUMAN-AI-INTERFACE.md`

然后用中文向人解释：页面组件、消息调用链、准备修改的文件、预期页面变化和验证方法。得到确认后再写文件。

## 执行顺序

1. 在代码 repo 运行 `npm install` 和 `npm run check`，记录基线结果。
2. 启动 `npm run dev`，让人打开页面、切换皮肤并发送一次 mock 消息。
3. 根据 `templates/COLLABORATION-PLAN.md` 确认两个人的目标、文件边界和合并检查方式。
4. 每次只实现一个小目标。改动前列出文件，改动后立即运行相关检查。
5. 用 `templates/HUMAN-AI-DESIGN.md` 记录一条情感表达、一条不确定性表达、一条能力边界和一个人工控制点。
6. 确认 `.env.local` 被忽略后，请人自己填入老师提供的 key；不要要求把 key 粘贴到对话。
7. 重启服务，检查 `/api/health` 中 provider 为 `deepseek` 且 model 可见。
8. 让人在网页发送一条新的短消息，确认页面出现真实模型回复。
9. 再运行 `npm run check`，并按 `templates/VALIDATION-REPORT.md` 记录命令、返回结果和页面证据。
10. 只有老师明确要求共享时，才把不含私人内容和密钥的验证摘要写入获授权的共享输出目录。

## GitHub 协作规则

- 修改前先运行 `git status --short --branch`，不要覆盖他人的未提交改动。
- 两个人优先选择不同文件或清楚分离的组件。
- 两个人各自使用小分支和 Pull Request；由老师记录合并顺序。第二个合并前先更新主分支并重新运行检查。
- 同一文件发生冲突时停止并让两个人决定，不自动覆盖任一边。
- branch、commit、push、Pull Request 都要先说明影响，并等待老师针对当前动作确认。
- 真实 GitHub 协作完成时，记录 branch、commit SHA、Pull Request 链接和另一人的 review 结论；缺少任一项时，只能报告本地协作进度。
- 未获得确认时，可以完成本地修改、diff、测试和改动说明，但不能执行外部动作。
- 不允许用重置、回滚或删除来解决冲突；先报告冲突文件和双方目标。

## DeepSeek 完成门槛

以下证据必须同时存在，才可写“真实 API 已接通”：

1. `/api/health` 显示 `provider: deepseek` 和当前模型。
2. 人在页面输入了一条本次新写的消息。
3. 页面返回了非 mock 的模型回复。
4. 回复气泡显示 DeepSeek 来源和当前模型，而不是“模拟回复”。
5. `npm run check` 通过。
6. 报告中没有 key、完整请求头或其他密钥材料。

缺 key、额度不足、网络失败或 API 报错时，写明具体阻塞和已验证的 mock 范围，不得降低完成门槛。

## 禁止动作

- 不读取、打印、复制或提交 API key、Token、Cookie、密码和私人笔记。
- 不把 mock 回复写成真实 DeepSeek 结果。
- 不把服务启动成功写成页面功能已验证。
- 不未经确认执行 commit、push、创建 remote、发布、删除或回滚。
- 不把 Home Assistant、硬件、语音或多模态扩进当前任务。
- 不把一次小改动扩成重写整个项目。

## 最终报告

```text
代码 repo 路径：
两个人的修改范围：
可见改动：
Git 状态：
branch / commit SHA / Pull Request / review：
npm run check：
页面地址：
DeepSeek provider / model：
真实 API 输入与结果摘要：
人工检查：
共享摘要路径：未要求 / 绝对路径
个人验证报告：<个人 Obsidian 知识库>/Learn/Agent 101/Unit 4/VALIDATION-REPORT.md
仍未验证：
```

最终报告必须明确区分自动检查、页面人工检查和真实 API 证据。人没有亲自检查页面时，不得宣布本单元完成。
