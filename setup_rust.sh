# ⚡ Fast Rust Setup (Pinned Version)
rustup component add rust-src

# install python env through uv
curl -LsSf https://astral.sh/uv/install.sh | sh
uv venv --allow-existing
uv pip install jupyter-console

# Download pre-compiled Evcxr binary (x86_64 Linux)
LATEST_URL=$(curl -s https://api.github.com/repos/evcxr/evcxr/releases/latest | grep "browser_download_url.*x86_64-unknown-linux-gnu.tar.gz" | grep "jupyter" | cut -d '"' -f 4)

echo "📦 Downloading pre-compiled kernel...${LATEST_URL}"
curl -L -f -o evcxr.tar.gz "${LATEST_URL}"
tar -xzf evcxr.tar.gz

sudo find . -name "evcxr_jupyter" -type f -exec mv {} /usr/local/bin/evcxr_jupyter \;
sudo chmod +x /usr/local/bin/evcxr_jupyter
/usr/local/bin/evcxr_jupyter --install
echo "\n✅ evcxr installation successful!\n"

uv run jupyter kernelspec list