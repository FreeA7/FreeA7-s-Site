#!/usr/bin/env bash
set -euo pipefail

# Build MkDocs site, post-process HTML, then reload nginx.

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT_DIR"

VENV="$ROOT_DIR/.venv"
if [[ ! -d "$VENV" ]]; then
  python3 -m venv "$VENV"
fi

"$VENV/bin/python" -m pip install -U pip >/dev/null
"$VENV/bin/python" -m pip install -U mkdocs mkdocs-material >/dev/null

#
# NOTE:
# venv 内的 `mkdocs` 脚本 shebang 可能包含绝对路径；目录重命名后会失效。
# 这里统一使用 `python -m mkdocs`，避免此类问题。
#
"$VENV/bin/python" -m mkdocs build --clean
python3 motify_index.py

# If running as root, reload nginx directly; otherwise try passwordless sudo.
if [[ "${EUID:-0}" -eq 0 ]]; then
  nginx -t
  systemctl reload nginx
else
  if sudo -n true 2>/dev/null; then
    sudo nginx -t
    sudo systemctl reload nginx
  else
    echo "Built site, but cannot reload nginx (sudo requires a TTY/password)."
    echo "Run this as root, or run: sudo nginx -t && sudo systemctl reload nginx"
  fi
fi

echo "Deployed: $ROOT_DIR/site -> https://freea7.fun/"

#!/usr/bin/env bash
set -euo pipefail

# Build MkDocs site, post-process HTML, then reload nginx.

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT_DIR"

VENV="$ROOT_DIR/.venv"
if [[ ! -d "$VENV" ]]; then
  python3 -m venv "$VENV"
fi

"$VENV/bin/python" -m pip install -U pip >/dev/null
"$VENV/bin/python" -m pip install -U mkdocs mkdocs-material >/dev/null

#
# NOTE:
# venv 内的 `mkdocs` 脚本 shebang 可能包含绝对路径；目录重命名后会失效。
# 这里统一使用 `python -m mkdocs`，避免此类问题。
#
"$VENV/bin/python" -m mkdocs build --clean
python3 motify_index.py

# If running as root, reload nginx directly; otherwise try passwordless sudo.
if [[ "${EUID:-0}" -eq 0 ]]; then
  nginx -t
  systemctl reload nginx
else
  if sudo -n true 2>/dev/null; then
    sudo nginx -t
    sudo systemctl reload nginx
  else
    echo "Built site, but cannot reload nginx (sudo requires a TTY/password)."
    echo "Run this as root, or run: sudo nginx -t && sudo systemctl reload nginx"
  fi
fi

echo "Deployed: $ROOT_DIR/site -> https://freea7.fun/"
