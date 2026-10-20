---

## 🧪 4. Verification Script (`step1/verify.sh`)

```bash
#!/bin/bash

# Ensure Node is installed and version is >= 24
export PATH="$HOME/.local/share/fnm:$PATH"
if ! command -v node &> /dev/null; then
    echo "Node.js is not installed."
    exit 1
fi

NODE_VERSION=$(node -v | cut -d 'v' -f 2 | cut -d '.' -f 1)
if [ "$NODE_VERSION" -lt 22 ]; then
    echo "Node version must be 22 or higher."
    exit 1
fi

# Check if rea-work folder exists
if [ ! -d "$HOME/rea-work" ] && [ ! -d "./rea-work" ]; then
    echo "Working directory 'rea-work' not found."
    exit 1
fi

echo "Environment setup verified successfully!"
exit 0
