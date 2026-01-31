# FreeA7-s-Site

这是一个使用 **MkDocs + Material 主题** 构建的个人技术文档/博客站点。

在线访问：`https://freea7.fun/`

## 目录结构

- `docs/`：Markdown 文档与图片资源（站点内容源文件）
- `mkdocs.yml`：MkDocs 站点配置（导航/主题等）
- `deploy.sh`：在服务器上构建并部署（生成 `site/`，并可 reload Nginx）
- `motify_index.py`：构建后对生成的 HTML 做后处理（例如插入备案号）
- `site/`：构建产物（已加入 `.gitignore`，不提交）

## 本地开发/预览

要求：Python 3

```bash
python3 -m venv .venv
. .venv/bin/activate
pip install -U pip mkdocs mkdocs-material
mkdocs serve
```

默认访问 `http://127.0.0.1:8000/`。

## 构建

```bash
mkdocs build --clean
python3 motify_index.py
```

构建产物在 `site/`。

## 部署到 freea7.fun（服务器上）

本仓库默认的 Nginx 静态站点目录为（Nginx `root`）：

- `/srv/myservice/FreeA7-s-Site/site`

一键部署（构建 + 后处理；如果有免密 sudo 则会自动 reload nginx）：

```bash
./deploy.sh
```

如果当前用户无法 reload nginx，可用 root 执行：

```bash
sudo nginx -t && sudo systemctl reload nginx
```

更详细的服务器部署说明见：`DEPLOY.md`。

## GitHub

远端仓库：`git@github.com:FreeA7/FreeA7-s-Site.git`
