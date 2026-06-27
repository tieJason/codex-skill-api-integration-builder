# API 集成构建器

构建稳健的 API 客户端、webhook、重试和类型化错误。

这是一个独立发布的中文 Codex skill。整个仓库本身就是一个 skill 目录，可以直接复制到 Codex 的 skills 目录中使用。

## 安装

PowerShell:

```powershell
.\install.ps1
```

macOS/Linux:

```bash
./install.sh
```

默认安装到 ~/.codex/skills/api-integration-builder。如需安装到其他 Codex home，请设置 CODEX_HOME。

## 使用

```text
使用 $(System.Collections.Hashtable.name) 处理这个任务。
```

## 文件

- SKILL.md：skill 的触发描述和执行说明。
- gents/openai.yaml：Codex UI 展示元数据。

## License

MIT.