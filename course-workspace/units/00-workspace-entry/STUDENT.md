# Unit 0：完成准备，确认可以开始

你已经按根 `README.md` 把课程 repo 放进个人 Obsidian。这里不再 clone、移动或更新 workspace。

Unit 0 只完成三件事：准备两个 Skill、生成课前报告、线下检查 Claudian。课程 repo 保持只读，个人报告写入 `Learn/Agent 101/Unit 0/`。需要 Codex 动手时，使用对应的“一键复制给 Codex”代码块。

## 课前准备两个 Skill

1. 在 Obsidian 中打开本页。
2. 复制下面整段提示词发给 Codex。
3. Codex 完成后，不要重复安装；新开一个 Codex task，进入下一节。

### 第一段：检查与安装

```text
请执行 Agent 101 的 Unit 0 课前准备。

先读取课程 repo 根目录的 SKILLS.md，以及本 Unit 的 STUDENT.md、AGENT-TASK.md 和 REPO-ACCESS.md。

workspace 已经安装，不要再次 clone、pull、移动或修改课程 repo。先请我确认个人 Obsidian Vault 的绝对路径，再按 AGENT-TASK.md：
1. 核对当前课程 repo 的路径、remote 和三个公开 repo。
2. 按 SKILLS.md 的固定来源检查并准备 teach、aihot；已有目录不要覆盖，不搜索同名替代品。
3. 报告实际路径、来源和“已存在 / 本次安装 / 需要协助”。
4. 不 commit、不 push，不索取或记录任何密钥。

完成后请我新开一个 Codex task，并使用本页“第二段：新 task 验证”。
```

遇到冲突、网络失败或来源不一致时，保留准确错误，写成“需要协助”，不要覆盖现有文件。

## 新 task 验证

新安装的 Skill 通常要到新 task 才能读取。复制下面整段提示词：

### 第二段：生成课前报告

```text
请验证 Agent 101 的 Unit 0 课前准备，不要重新安装或更新任何东西。

读取课程 repo 根目录的 SKILLS.md，以及本 Unit 的 STUDENT.md、AGENT-TASK.md 和 REPO-ACCESS.md。请我确认个人 Obsidian Vault 和课程 repo 的绝对路径。

验证当前 task 能读取 teach 和 aihot；本次不要运行 teach。使用 aihot 查询一次最新 AI 资讯，并保留至少一个原始来源链接。

把结果写入 <个人 Obsidian 知识库>/Learn/Agent 101/Unit 0/SETUP-REPORT.md，重新打开核对后，告诉我绝对路径和仍需协助的项目。不要修改课程 repo，不 commit 或 push。
```

在 Obsidian 中亲自打开 `SETUP-REPORT.md`，核对 Vault、课程 repo、remote、三个公开 repo、两个 Skill 和 AI Hot 来源。

`teach` 留到遇到真实概念问题时再使用，工作目录必须在个人 `Learn/Agent 101/`，不要在课程 repo 中运行。

## 线下检查 Claudian

这部分和老师一起完成，不需要课前自行处理。Claudian 只支持桌面版 Obsidian，要求 Obsidian 1.7.2 或更高版本。

- [Claudian 官方 Obsidian 插件页](https://community.obsidian.md/plugins/realclaudian)
- [Claudian 官方 GitHub](https://github.com/YishenTu/claudian)

人在 Obsidian 中完成：

1. 从“设置 -> 第三方插件 -> 浏览”搜索并安装 `Claudian`，然后启用。
2. 在 Claudian 中选择 `Codex` provider。
3. 确认界面显示 Codex，再打开聊天面板并复制下面的提示词。

### 第三段：Claudian 最小读写检查

```text
请完成 Agent 101 Unit 0 的 Claudian 最小读写检查。

先读取课程 repo 中本 Unit 的 STUDENT.md 和 AGENT-TASK.md。请我在 Claudian 界面确认当前 provider 显示为 Codex；没有确认前停止。

读取 Projects/AI Agent Learning Workspace/course-workspace/units/00-workspace-entry/STUDENT.md，只在个人学习区创建或更新 Learn/Agent 101/Unit 0/CLAUDIAN-CHECK.md。

按 AGENT-TASK.md 写入检查时间、插件版本、provider、读取路径、写入结果和 human_check。重新打开文件核对，再告诉我绝对路径。

不要修改课程 repo，不 commit、push，不记录密钥，不运行无关命令。失败时保留准确错误，并报告直接使用 Codex 操作同一 Vault 的降级路径。
```

最后亲自在 Obsidian 中打开 `CLAUDIAN-CHECK.md`。内容与实际一致时，把 `human_check` 改为 `confirmed`。

## 什么算完成

- 三个公开 repo 都能打开，课程 repo 路径和 remote 与 `SETUP-REPORT.md` 一致。
- 新 Codex task 能读取 `teach`、`aihot`，AI Hot 查询带有原始来源链接。
- `SETUP-REPORT.md` 位于个人 `Learn/Agent 101/Unit 0/`，并已亲自打开核对。
- Claudian 已选择 Codex，并完成读取本页和写入 `CLAUDIAN-CHECK.md`；否则必须保留准确错误和降级路径，不能写成已验证。
- 课程 repo 没有产生个人报告或其他修改。

老师线下只检查以上结果，不重复课前安装。Claudian 失败时可以直接使用 Codex 继续课程，但不能声称 Claudian 检查完成。
