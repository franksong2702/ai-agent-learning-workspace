# Unit 2 开始前：准备 Obsidian Web Clipper

Web Clipper 把浏览器文章保存成个人 Obsidian 知识库中的 Markdown。人负责安装扩展、确认权限和选择 Vault；Codex 可以解释配置、生成模板内容并核对抓取结果。

## 1. 从官方入口安装

- [Obsidian Web Clipper 官方说明](https://obsidian.md/help/web-clipper)
- [Chrome Web Store 官方扩展页](https://chromewebstore.google.com/detail/obsidian-web-clipper/cnjifjpddelmedmihgijeibhnjfabmlf)

Obsidian 官方还提供 Safari、Firefox 和 Edge 版本。课程不把 Google 账号当成唯一前置；如果当前 Chrome Web Store 要求登录或无法安装，记录准确提示，请老师协助选择官方的其他浏览器版本或使用老师准备的 Raw。

不要下载来源不明的同名扩展。

## 2. 这次只配一个最小模板

模板名称：

```text
Agent 101 Raw
```

在模板里确认以下内容：

| 项目 | 建议值 | 为什么 |
| --- | --- | --- |
| Vault | 自己已经确认的个人 Obsidian 知识库 | 不建立课程专用 Vault |
| Note location | `Learn/Wiki/<当前主题>/raw` | Raw 和同一主题的编译结果放在一起 |
| Note name | `{{title}}` | 先沿用原文标题，之后由人判断是否改名 |
| 正文 | `# {{title}}` 加 `{{content}}` | 保存标题和文章正文 |
| `type` | `raw-source` | 明确它还是来源原料 |
| `source` | `{{url}}` | 能回到原始页面核对 |
| `author` | `{{author}}` | 页面提供作者时保留 |
| `clipped` | `{{date}}` | 记录抓取日期 |
| `status` | `raw` | 不把抓取结果当成已理解知识 |

`<当前主题>` 必须在第一次抓取前替换成实际主题名称。不要把尖括号原样留在路径里。

模板正文可以从这个最小版本开始：

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

Web Clipper 的模板和变量能力以官方说明为准。不同网页不一定都提供作者字段；缺失时保留空值或由人核对，不让 Codex猜作者。

## 3. 先做一次测试抓取

1. 在 [AI Hot](https://aihot.virxact.com/) 找到一个感兴趣的条目，再打开原作者页面。
2. 先确认模板中的 `<当前主题>` 已替换。
3. 点击 Web Clipper，选择 `Agent 101 Raw` 模板和正确的个人 Vault。
4. 在 Obsidian 左侧打开生成的 Markdown 文件。
5. 人亲自检查标题、正文、原始链接、作者、抓取日期和保存路径。

## 4. 给 Codex 的检查提示词

```text
请先不要编译文章。请读取 Unit 2 的 materials/WEB-CLIPPER-SETUP.md，并帮我检查刚刚抓取的 Markdown 文件。

个人 Obsidian 知识库路径：[填写绝对路径]
当前主题：[填写主题]
抓取文件路径：[填写绝对路径]

请检查：
1. 文件是否位于 Learn/Wiki/<当前主题>/raw/。
2. title、type、source、author、clipped、status 是否存在。
3. source 是否是原作者页面，而不是只有 AI Hot 的转述页。
4. 正文是否实际保存，而不是空文件或只有链接。

只报告检查结果和需要我手动确认的字段。不要改写 Raw，不要开始编译，不要安装扩展，不要 commit 或 push。
```

## 5. 通过条件

- 扩展来自官方入口，或老师已明确提供降级 Raw。
- 人已经在浏览器中选择正确 Vault 和模板。
- 测试文件确实位于 `Learn/Wiki/<当前主题>/raw/`。
- 文件能打开，正文不是空的，原始链接可以回查。
- frontmatter 至少包含 `type`、`source`、`clipped` 和 `status`；作者缺失时已明确标注待核对。

上述任一项未完成，就先记录为 Unit 2 准备阻塞，不进入文章编译。
