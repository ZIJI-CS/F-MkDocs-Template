# F-MkDocs-Template

本 Repo 为所有基于 MkDocs 的笔记项目提供一个基础模板，方便快速完成框架搭建，直接进入内容编辑。

## 使用方法

使用本模板创建新的笔记内容，请遵循以下流程：

1. 克隆本项目作为 codebase
2. 修改 `mkdocs.yaml` 来进行基础设置
3. 修改 `docs/index.md` 来填写课程信息，初始化内容
4. 删除 docs 目录下的 `instructions.md` 软链，即删除本文

## 项目结构

直接与笔记内容有关的部分，应当全部放在 `docs` 目录下，并遵循如下组织结构：

```plaintext
.
├── index.md
├── 0-x.md
├── 1-x.md
├── ...
└── imgs
    ├── ZIJI-LOGO.png
    └── ...
```

如果有其它非图片类型的多媒体资源，应当创建与 `imgs` 目录同级的资源文件夹。

## 环境配置

推荐使用 `conda` 创建虚拟环境，使用 `pip` 进行包管理。

```shell
# 创建虚拟环境
conda create -n ZIJI python=3.10

# 安装依赖
pip install -r requirements.txt
```

一行一行来执行就是：（注意，如下代码应当与 GitHub Action Scripts 同步！）

```shell
pip install mkdocs==1.5.3
pip install mkdocs-material==9.5.5
pip install mkdocs-git-revision-date-localized-plugin==1.2.2
pip install mkdocs-git-committers-plugin-2==2.2.3
pip install mkdocs-minify-plugin==0.7.2
```