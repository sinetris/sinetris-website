#!/usr/bin/env bash
set -Eeuo pipefail

: "${PROJECT_NAME:=sinetris-website}"
: "${PROJECT_TMPDIR:=${TMPDIR:-/tmp}}"
: "${DEBUG:=false}"

audit_dir=$(mktemp -q -d -p "${PROJECT_TMPDIR}" "${PROJECT_NAME}.XXXXXX") && exit_code=0 || exit_code=$?

if [ "${exit_code}" -ne 0 ]; then
  echo "[FAIL]: Can't create temp directory for '${PROJECT_NAME}' in '${PROJECT_TMPDIR}', exiting..." >&2
  exit 1
else
  echo "[DEBUG]: Site audit created in '${audit_dir:?}'"
fi

build_hugo_site=$(HUGO_MINIFY_TDEWOLFF_HTML_KEEPCOMMENTS=true \
  HUGO_ENABLEMISSINGTRANSLATIONPLACEHOLDERS=true \
  hugo --destination "${audit_dir:?}" \
) && exit_code=0 || exit_code=$?

if [ "${exit_code}" -ne 0 ]; then
  echo "[FAIL]: Can't build hugo site" >&2
  exit 1
fi

if grep \
  -inorE \
  "<\!-- raw HTML omitted -->|ZgotmplZ|\[i18n\]|\(<nil>\)|(&lt;nil&gt;)|hahahugo" \
  "${audit_dir}"
then
  echo "[FAIL]: Site audit. Review the contents of ${audit_dir}." >&2
  exit 1
else
  echo "[PASS]: Site audit"
  rm -rf "${audit_dir}"
fi
