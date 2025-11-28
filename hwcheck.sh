#!/usr/bin/env bash
set -e

RED="\e[31m"; GREEN="\e[32m"; YELLOW="\e[33m"; BLUE="\e[34m"; RESET="\e[0m"

echo -e "${BLUE} Hardware & System Validator for Polkadot DN nodes${RESET}"

check() { [[ "$1" ]] && echo -e "${GREEN}✔ $2${RESET}" || echo -e "${RED}❌ $3${RESET}"; }

CPU=$(lscpu | grep -E "avx2|avx512" | wc -l)
check "$CPU" "CPU supports AVX instructions" "AVX missing — node will be rejected"

IOPS=$(dd if=/dev/zero of=testfile bs=4k count=10k oflag=direct 2>&1 | grep -o '[0-9\.]\+ MB/s')
rm -f testfile
check "$IOPS" "Disk IOPS OK ($IOPS)" "Low disk throughput — use NVMe"

NTP=$(timedatectl | grep -i synchronized | grep yes)
check "$NTP" "Time sync OK" "Time not synchronized — enable systemd-timesyncd"

ULIMIT=$(ulimit -n)
test "$ULIMIT" -ge 10000 && check 1 "File descriptor limits OK ($ULIMIT)" "Increase ulimit to >= 10000"

echo -e "${BLUE} HWCheck completed.${RESET}"
