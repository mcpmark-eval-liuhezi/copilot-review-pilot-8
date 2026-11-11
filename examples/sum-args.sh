# Copilot Code Review Pilot — Example Script

This file exists purely as a demo for the GitHub Copilot code review pilot.

```bash
#!/usr/bin/env bash
# sum-args.sh — adds up all numeric arguments passed on the command line.
# Usage: ./sum-args.sh 3 5 10
set -euo pipefail

sum=0
for arg in "$@"; do
  case "$arg" in
    ''|*[!0-9]*) echo "Warning: skipping non-numeric argument: $arg" >&2 ;;
    *) sum=$((sum + arg)) ;;
  esac
done
echo "Total: $sum"
```

Run it with: `bash examples/sum-args.sh 3 5 10`
