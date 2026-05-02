#!/bin/sh
set -eu

gzip_bytes() {
  gzip -9 -n -c "$1" | wc -c | tr -d ' '
}

assert_le() {
  label=$1
  value=$2
  max=$3
  if [ "$value" -gt "$max" ]; then
    printf '%s is %sB, expected <= %sB\n' "$label" "$value" "$max" >&2
    exit 1
  fi
}

for file in c2.nano.css c2.200.css c2.css index.html demo.html README.md LICENSE size.sh test.sh package.json CONTRIBUTING.md CHANGELOG.md .github/workflows/ci.yml .github/workflows/publish.yml .github/ISSUE_TEMPLATE/bug_report.md .github/ISSUE_TEMPLATE/feature_request.md .github/PULL_REQUEST_TEMPLATE.md; do
  test -s "$file"
done

for token in '.c' '.r' '.g' '.y' '.k' '.b' '.p' '.w'; do
  grep -Fq "$token" c2.css
done

grep -Fq 'href="c2.css"' index.html
grep -Fq 'href="c2.css"' demo.html
grep -Fq 'https://code2care.github.io/c2.css/demo.html' README.md

assert_le c2.nano.css "$(gzip_bytes c2.nano.css)" 170
assert_le c2.200.css "$(gzip_bytes c2.200.css)" 200
assert_le c2.css "$(gzip_bytes c2.css)" 380

NPM_CONFIG_CACHE=${NPM_CONFIG_CACHE:-${TMPDIR:-/tmp}/c2-npm-cache}
export NPM_CONFIG_CACHE
npm pack --dry-run >/dev/null
./size.sh
