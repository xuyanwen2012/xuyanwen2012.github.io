zola := "zola"

# Build the site
build:
    {{zola}} build

# Serve locally (access at http://<your-ip>:8080)
serve base_url="localhost":
    {{zola}} serve --interface 0.0.0.0 --port 8080 --base-url {{base_url}}

# Check internal links
check:
    {{zola}} check --skip-external-links

# Check internal and external links
check-all:
    {{zola}} check

# Format templates
fmt:
    npx prettier --write templates/

# Clean build artifacts
clean:
    rm -rf public
