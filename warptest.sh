#!/usr/bin/env bash
set -e

RED="\e[31m"; GREEN="\e[32m"; BLUE="\e[34m"; RESET="\e[0m"

echo -e "${BLUE}🚀 Warp-Sync Integrity Test${RESET}"

DB="/var/lib/polkadot/chains/polkadot/db/full"

if [ ! -d "$DB" ]; then
  echo -e "${RED}❌ Warp DB not found: $DB${RESET}"
  exit 1
fi

BLOCKS=$(ls "$DB" | wc -l)
[[ "$BLOCKS" -gt 200 ]] && \
  echo -e "${GREEN}✔ Warp-sync database present (${BLOCKS} objects)${RESET}" || \
  echo -e "${RED}❌ Warp incomplete — redownload snapshot${RESET}"

echo -e "${BLUE}✨ WarpTest completed.${RESET}"
