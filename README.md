# Zsh Aliases Collection

这是一个分类管理的 Zsh 别名配置集，设计为 Dotfiles 的子模块（Submodule），也可以独立使用。

## 📂 结构说明

所有配置文件均为 `.conf` 格式，按功能逻辑拆分：

-   **`git.conf`**: Git 快捷操作（g:a, g:s, lg 等）及增强型 `git:init` 函数。
-   **`system.conf`**: 系统工具替换（ls -> eza, cat -> bat 等）及磁盘/进程管理。
-   **`dev.conf`**: 开发环境配置（Pyenv, Node, Zellij, AI 工具等）。
-   **`tools.conf`**: 实用小工具（ytdl, 解压, 翻译, 日语转换等）。
-   **`dotfiles.conf`**: Dotfiles 维护工具（dotlink, dotsync, reload 等）。

## 🚀 安装与使用

### 作为 Dotfiles 子模块使用（推荐）

在你的主 Dotfiles 仓库中添加：
```bash
git submodule add https://github.com/iamcheyan/aliases aliases
```

在 `.zshrc` 中加入以下自动加载逻辑：
```zsh
# 自动加载 aliases 目录下的所有 .conf 文件
if [[ -d ~/dotfiles/aliases ]]; then
    for alias_file in ~/dotfiles/aliases/*.conf(N); do
        source "$alias_file"
    done
fi
```

### 独立使用
克隆仓库并手动 source 需要的文件：
```bash
git clone https://github.com/iamcheyan/aliases.git
source aliases/system.conf
```

## 🛠️ 常用快捷命令示例

-   `reload`: 快速重载 Zsh 配置。
-   `os:config`: 快速打开别名配置目录。
-   `g:a` / `g:s`: Git 暂存全部 / 查看状态。
-   `ze`: 快速附加/启动 Zellij 会话。

## ⚠️ 注意事项

-   如果子模块未克隆，`.zshrc` 会静默跳过加载，不会报错。
-   更新后建议运行 `reload` 或 `exec zsh` 使配置生效。
