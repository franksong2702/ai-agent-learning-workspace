# Unit 0–5 课程入口

每个教学单元使用两层材料：

```text
unit-name/
  STUDENT.md
  AGENT-TASK.md
```

- `STUDENT.md`：唯一的人读入口，说明为什么学、怎样操作和怎样判断结果；需要 Codex 动手时，完整提示词直接放在页面里。
- `AGENT-TASK.md`：Codex 收到页面内提示词后自行读取，用来确认前置、允许动作、禁止动作、输出和降级路径。人不需要在两个文件之间来回跳。

进入任何 Unit 后只做两件事：先从上到下读 `STUDENT.md`，再复制其中“开始本 Unit”的代码块给 Codex。已经完成的前置步骤不要重做。

## 建议顺序

1. [Unit 0：课前准备与验证](00-workspace-entry/STUDENT.md)
2. [Unit 1：给 Codex 一份行为说明](01-agent-behavior-guide/STUDENT.md)
3. [Unit 2：AI Hot -> Obsidian -> 学习卡 -> Pitch](02-aihot-obsidian-pitch/STUDENT.md)
4. [Unit 3：把重复流程写成 Skill](03-llm-wiki-skill-lab/STUDENT.md)
5. [Unit 4：一起改造一个 AI 网页宠物](04-web-pet-demo/STUDENT.md)
6. [Unit 5：把自由想法变成项目路径](05-fuzzy-idea-to-project-path/STUDENT.md)

每个 Unit 都必须先确认前置条件。Unit 0 的 repo、Obsidian、Codex 和入门 Skill，Unit 2 的个人知识产物，Unit 4 的真实 DeepSeek 往返，都需要实际证据，不能由材料准备替代。

各 Unit 使用和安装哪些 Skill，以 repo 根目录的 [课程 Skill 地图](../../SKILLS.md) 为准。
