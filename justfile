zola := "podman run --rm --userns=keep-id -v $PWD:/app:Z --workdir /app ghcr.io/getzola/zola:v0.19.1"

# Build the site
build:
    {{zola}} build

# Serve locally (access at http://<your-ip>:8080)
serve base_url="localhost":
    podman run --rm --userns=keep-id -v $PWD:/app:Z --workdir /app -p 8080:8080 ghcr.io/getzola/zola:v0.19.1 serve --interface 0.0.0.0 --port 8080 --base-url {{base_url}}

# Check internal links
check:
    {{zola}} check

# Format templates
fmt:
    npx prettier --write templates/

# Clean build artifacts
clean:
    podman unshare rm -rf public
