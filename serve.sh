#!/usr/bin/env sh
# Simple local server for the static site.
# Usage: ./serve.sh [PORT]
# Example: ./serve.sh 8000

PORT=${1:-8000}
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"

cd "$ROOT_DIR" || exit 1

if command -v python3 >/dev/null 2>&1; then
  echo "Serving $ROOT_DIR on http://127.0.0.1:$PORT"
  python3 -m http.server "$PORT"
elif command -v python >/dev/null 2>&1; then
  echo "Serving $ROOT_DIR on http://127.0.0.1:$PORT"
  python -m SimpleHTTPServer "$PORT"
else
  echo "Error: Python is required to run this script."
  echo "Install Python 3 and try again."
  exit 1
fi
