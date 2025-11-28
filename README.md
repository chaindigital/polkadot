# CHAIN DIGITAL — Polkadot & Kusama Tooling Suite

A complete toolkit for Polkadot/Kusama node operators, with warp-sync installers, automated upgrade scripts, diagnostic utilities, and DN-focused best practices.

---

## 🚀 Why This Toolkit Exists

Running a Polkadot/Kusama node should not require guesswork. We provide:

###  Region-optimized RPC & Snapshots (PolkadotInsights)

High-performance RPC endpoints and snapshots optimized for latency-challenged regions  
(South America, Africa, APAC). This delivers **2–3× faster** sync times and has already helped dozens of node operators.

🔗 https://polkadotinsights.com/

---

### 🧰 Diagnostic Tools for DN Candidates

Daily-use troubleshooting scripts that eliminate the most common **DN-killing mistakes** and verify whether your node meets evaluator expectations.

| Script | Purpose |
|-------|---------|
| `logscan.sh` | Detects restart loops, stalls, libp2p failures, fork/desync conditions |
| `hwcheck.sh` | Validates CPU flags, disk IOPS, kernel tuning, time sync & ulimit requirements |
| `warptest.sh` | Confirms warp-sync integrity and database completeness |

---

### ▶️ Run Diagnostic Tools

**LogScan — detect stalls, restarts & libp2p issues**
```bash
source <(curl -s https://raw.githubusercontent.com/chaindigital/polkadot/main/logscan.sh)
```

**HWCheck — verify hardware, kernel & performance readiness**
```bash
source <(curl -s https://raw.githubusercontent.com/chaindigital/polkadot/main/hwcheck.sh)
```

**WarpTest — ensure warp-sync correctness**
```bash
source <(curl -s https://raw.githubusercontent.com/chaindigital/polkadot/main/warptest.sh)
```
These tools prevent the exact issues that cause DN candidates to fail evaluation — including missing AVX CPU instructions, unsynchronized system clocks, misconfigured warp-sync, low IOPS storage, and hidden libp2p stalls.

---

###  DN-Focused Setup Guide + Node Readiness Checker

Full guide tailored for Distributed Nodes: warp-sync, safe upgrades, HA topology, troubleshooting.

Upcoming utility: **Node Readiness Checker**  
Runs a full pre-launch validation of kernel, storage, clocks, limits, CPU flags, performance thresholds.

📘 Guide:  
https://docs.chaindigital.io/mainnets/polkadot/install

---

## 🛠 Installation Scripts

### 📋 Upgrade DOT/KSM

```bash
source <(curl -s https://raw.githubusercontent.com/chaindigital/polkadot/main/newupgrade.sh)
```

### 📋 Upgrade notroot DOT/KSM

```bash
source <(curl -s https://raw.githubusercontent.com/chaindigital/polkadot/main/upgradenotroot.sh)
```

### 🛠️ Install polkadot ParityDb warp

```bash
source <(curl -s https://raw.githubusercontent.com/chaindigital/polkadot/main/dotwarp.sh)
```

### 🛠️ Install kusama ParityDb warp

```bash
source <(curl -s https://raw.githubusercontent.com/chaindigital/polkadot/main/ksmwarp.sh)
```

### 🛠️ Install kusama not root

```bash
source <(curl -s https://raw.githubusercontent.com/chaindigital/polkadot/main/notrootinstallksm.sh)
```

### 🛠️ Install kusama root

```bash
source <(curl -s https://raw.githubusercontent.com/chaindigital/polkadot/main/rootinstallksm.sh)
```

### 🛠️ Install polkadot 

```bash
source <(curl -s https://raw.githubusercontent.com/chaindigital/polkadot/main/installdotcurl.sh)
```

### ⚙️ Purge DOT/KSM 

```bash
source <(curl -s https://raw.githubusercontent.com/chaindigital/polkadot/main/purge.sh)
```

### ⚙️ Purge not root DOT/KSM

```bash
source <(curl -s https://raw.githubusercontent.com/chaindigital/polkadot/main/purgenotroot.sh)
```
