# Unit 2 硬前置：安装并配置 Obsidian Web Clipper

Web Clipper 把浏览器文章保存成个人 Obsidian Vault 中的 Markdown Raw。Unit 2 必须从一个真实抓取的 Raw 开始，因此扩展安装、模板配置和测试抓取都要在编译前完成。

人负责浏览器安装、权限确认、选择 Vault 和点击抓取；Codex 可以解释设置并检查生成的 Markdown，但不能替人声称界面操作已经完成。

## 1. 从官方入口安装

- [Obsidian Web Clipper 官方说明](https://obsidian.md/help/web-clipper)
- [Chrome Web Store 官方扩展页](https://chromewebstore.google.com/detail/obsidian-web-clipper/cnjifjpddelmedmihgijeibhnjfabmlf)

Obsidian 官方还提供 Safari、Firefox 和 Edge 版本。课程不把 Google 账号当成唯一前置；如果当前浏览器无法从官方入口安装，保留准确提示并请老师处理，不下载来源不明的同名扩展。

## 2. 配置课程最小模板

模板名称：`Agent 101 Raw`

| 项目 | 建议值 | 作用 |
| --- | --- | --- |
| Vault | 自己长期使用的个人 Obsidian Vault | 不建立课程专用 Vault |
| Note location | `Inbox/Raw` | 所有新来源先进入统一 Raw 入口 |
| Note name | `{{title}}` | 保留原文标题，避免课堂临时命名 |
| 正文 | `# {{title}}` 加 `{{content}}` | 保存标题和正文 |
| `type` | `raw-source` | 说明它仍是来源材料 |
| `source` | `{{url}}` | 能回到原作者页面核对 |
| `author` | `{{author}}` | 页面提供作者时保留 |
| `clipped` | `{{date}}` | 记录抓取日期 |
| `status` | `raw` | 不把抓取结果当成已理解知识 |

模板正文：

```markdown
---
type: raw-source
source: "{{url}}"
author: "{{author}}"
clipped: "{{date}}"
status: raw
---

# {{title}}

{{content}}
```

不同网页不一定提供作者字段；缺失时保留空值或由人核对，不让 Codex猜作者。模板变量以 Obsidian 官方说明为准。

## 3. 做一次真实测试抓取

1. 打开一篇正文可阅读的原作者文章。
2. 点击 Web Clipper，选择 `Agent 101 Raw` 和正确的个人 Vault。
3. 确认保存位置显示为 `Inbox/Raw`。
4. 抓取后，在 Obsidian 左侧打开生成的 Markdown。
5. 人亲自检查标题、正文、原始链接、抓取日期和保存路径。

## 4. 一键复制给 Codex：只检查，不编译

```text
请只检查 Unit 2 的 Web Clipper 前置，不要开始编译。

先读取课程 repo 中：
- course-workspace/units/02-aihot-obsidian-pitch/materials/WEB-CLIPPER-SETUP.md
- course-workspace/units/02-aihot-obsidian-pitch/AGENT-TASK.md

请我确认个人 Obsidian Vault 和刚刚抓取的 Raw 文件绝对路径。

检查：
1. Raw 是否位于 <Vault>/Inbox/Raw/；
2. 正文是否真实保存，而不是空文件或只有链接；
3. frontmatter 是否有 type、source、clipped、status；
4. source 是否指向原作者页面；
5. 文件能否在 Obsidian 中由人亲自打开确认。

只报告“前置已通过”或准确缺口。不要修改、移动或重命名 Raw，不要安装扩展，不要开始 Wiki 编译，不要修改课程 repo，不 commit、不 push。
```

## 5. 通过条件

- 扩展来自官方入口。
- 人已经在浏览器中选择正确的个人 Vault 和 `Agent 101 Raw` 模板。
- 测试 Raw 确实位于 `Inbox/Raw/`。
- 文件能打开，正文不是空的，原始链接可以回查。
- frontmatter 至少包含 `type`、`source`、`clipped` 和 `status`。

任一项没有真实证据，就把 Unit 2 标为前置未完成，不进入编译。老师准备的备用 Raw 可以用于演示后续步骤，但不能替代 Web Clipper 前置通过。
