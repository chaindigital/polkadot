#!/usr/bin/env bash
set -e

LOGFILE="/var/log/polkadot/polkadot.log"

RED="\e[31m"; GREEN="\e[32m"; YELLOW="\e[33m"; BLUE="\e[34m"; RESET="\e[0m"

echo -e "${BLUE}🔍 Polkadot LogScan — Detecting critical runtime issues...${RESET}"

if [ ! -f "$LOGFILE" ]; then
  echo -e "${RED}❌ Log file not found: $LOGFILE${RESET}"
  echo -e "${YELLOW}Hint:${RESET} Check systemd service or container logs."
  exit 1
fi

declare -A PATTERNS=(
  ["Restart loops"]="panicked at|Restarting node"
  ["Stalls"]="timeout|Stalled|no progress"
  ["libp2p failures"]="libp2p|PeerId|connection refused"
  ["Warp-sync issues"]="warp.*failed|sync stalled|fork"
  ["Database corruption"]="DB corruption|invalid db"
)

for ISSUE in "${!PATTERNS[@]}"; do
  COUNT=$(grep -Ei "${PATTERNS[$ISSUE]}" "$LOGFILE" | wc -l)
  if [ "$COUNT" -gt 0 ]; then
    echo -e "${RED}❌ ${ISSUE}: ${COUNT} occurrences${RESET}"
  else
    echo -e "${GREEN}✔ ${ISSUE}: no issues found${RESET}"
  fi
done

echo -e "${BLUE}✨ LogScan completed.${RESET}"
