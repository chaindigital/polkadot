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

###  Diagnostic Tools for DN Candidates

Daily-use troubleshooting scripts that eliminate the most common DN-killing mistakes:

| Script | Purpose |
|-------|---------|
| `logscan.sh` | Detects restart loops, stalls, libp2p failures |
| `hwcheck.sh` | Validates CPU flags, IOPS, system kernel & tuning |
| `warptest.sh` | Verifies warp-sync correctness |

📎 Source code:  
https://github.com/chaindigital/polkadot/blob/main/logscan.sh  
https://github.com/chaindigital/polkadot/blob/main/hwcheck.sh  
https://github.com/chaindigital/polkadot/blob/main/warptest.sh  

These tools **prevent the exact issues** that cause DN candidates to fail evaluation.

---

###  DN-Focused Setup Guide + Node Readiness Checker

Full guide tailored for Distributed Nodes: warp-sync, safe upgrades, HA topology, troubleshooting.

Upcoming utility: **Node Readiness Checker**  
Runs a full pre-launch validation of kernel, storage, clocks, limits, CPU flags, performance thresholds.

📘 Guide:  
https://docs.chaindigital.io/mainnets/polkadot/install

---

## 🛠 Installation Scripts

> All scripts are now served from **chaindigital** repositories.

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
