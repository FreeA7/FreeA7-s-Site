## 服务器部署（freea7.fun）

### 站点类型

本项目为 **MkDocs 静态站点**：
- 源文件：`docs/`
- 产物目录：`site/`（由 `mkdocs build` 生成）

### 部署目录

Nginx 静态站点 `root` 指向：

- `/srv/myservice/FreeA7-s-Site/site`

### 一键部署

在服务器上进入项目目录执行：

```bash
cd /srv/myservice/FreeA7-s-Site
./deploy.sh
```

脚本会：
- 创建/复用 `.venv/`
- 安装 `mkdocs` 与 `mkdocs-material`
- 生成 `site/`
- 执行 `motify_index.py` 做 HTML 后处理
- 尝试 `nginx -t` 并 reload nginx（root 可直接执行；非 root 需要免密 sudo）

### Nginx reload 权限（可选）

如果希望 `deploy` 用户也能一条命令完成 reload，需要为 `deploy` 配置免密 sudo（推荐只放行 nginx 校验与 reload 两条命令）。

（具体 sudoers 写法可按你的现有安全策略配置。）

## 服务器部署（freea7.fun）

### 站点类型

本项目为 **MkDocs 静态站点**：
- 源文件：`docs/`
- 产物目录：`site/`（由 `mkdocs build` 生成）

### 部署目录

Nginx 静态站点 `root` 指向：

- `/srv/myservice/FreeA7-s-Site/site`

### 一键部署

在服务器上进入项目目录执行：

```bash
cd /srv/myservice/FreeA7-s-Site
./deploy.sh
```

脚本会：
- 创建/复用 `.venv/`
- 安装 `mkdocs` 与 `mkdocs-material`
- 生成 `site/`
- 执行 `motify_index.py` 做 HTML 后处理
- 尝试 `nginx -t` 并 reload nginx（root 可直接执行；非 root 需要免密 sudo）

### Nginx reload 权限（可选）

如果希望 `deploy` 用户也能一条命令完成 reload，需要为 `deploy` 配置免密 sudo（推荐只放行 nginx 校验与 reload 两条命令）。

（具体 sudoers 写法可按你的现有安全策略配置。）

