#!/bin/sh
set -eu

bytes() {
  wc -c < "$1" | tr -d ' '
}

gzip_bytes() {
  gzip -9 -n -c "$1" | wc -c | tr -d ' '
}

brotli_bytes() {
  if command -v brotli >/dev/null 2>&1; then
    brotli -q 11 -c "$1" | wc -c | tr -d ' '
  else
    printf 'n/a'
  fi
}

row() {
  label=$1
  file=${2:-$1}
  printf '%-14s raw=%s gzip=%s brotli=%s\n' "$label" "$(bytes "$file")" "$(gzip_bytes "$file")" "$(brotli_bytes "$file")"
}

row c2.nano.css
row c2.200.css
row c2.css
row index.html
row demo.html

tmp=${TMPDIR:-/tmp}/c2-css.$$
trap 'rm -f "$tmp"' EXIT

cat index.html c2.css > "$tmp"
row index+css "$tmp"

cat demo.html c2.css > "$tmp"
row demo+css "$tmp"
