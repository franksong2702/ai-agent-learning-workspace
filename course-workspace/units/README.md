# Unit 0-5 课程入口

这不是一套按文件顺序自学的课程。课堂使用三层材料：

```text
SLIDES.md
共同观看、提出问题、讲解和收束

STUDENT.md
切到个人 Workspace 后使用，包含公开可见的一键复制提示词

AGENT-TASK.md
Codex 自行读取，约束路径、动作、输出和验证
```

不同 Unit 可以采用不同顺序：Unit 0 由 Slides 带着完成工作台检查；Unit 1 先打开 `STUDENT.md`，自己阅读、向 Codex 提问并接受老师追问，最后才看 Slides 核对和收束；Unit 3 先完成 Skill 起草、单篇试编和 3–4 篇批量编译，最后才看 Slides 扩展 Skill 来源；Unit 5 先用 Slides 明确“需求先于实施”，再打开 `STUDENT.md` 进行 Grill Me 追问。需要 Agent 动手时，仍从同 Unit 的 `STUDENT.md` 复制提示词，Codex 再读取 `AGENT-TASK.md`。

## 建议顺序

1. [Unit 0：准备并确认工作台](00-workspace-entry/SLIDES.md)
2. [Unit 1：读懂 Karpathy 的 LLM Wiki](01-agent-behavior-guide/SLIDES.md)
3. [Unit 2：让 Agent 设计并完成第一次 Wiki 编译](02-aihot-obsidian-pitch/SLIDES.md)
4. [Unit 3：把一次成功做法变成自己的 Skill](03-llm-wiki-skill-lab/SLIDES.md)
5. [Unit 4：一起改造一个 AI 网页宠物](04-web-pet-demo/SLIDES.md)
6. [Unit 5：把模糊想法变成可实施的需求](05-fuzzy-idea-to-project-path/SLIDES.md)

Unit 0-5 均已有课堂 Slides。Unit 4 先用 Slides 认识预制 Demo、三层结构、API 和课堂 branch，再打开 `STUDENT.md` 进入个人代码 repo；Unit 5 的课堂最低产物是一份本人确认的 `PROJECT-REQUIREMENTS.md`，实施路径和代码属于可选延伸。每个 Unit 的实际完成状态必须来自真实文件、界面和人工检查，不能由材料存在替代。

各 Unit 使用和安装哪些 Skill，以 repo 根目录的 [课程 Skill 地图](../../SKILLS.md) 为准。
