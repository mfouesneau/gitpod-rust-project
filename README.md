# Exploring Rust with a template project

VSCode Rust project template for use with cargo

- prelinimary project structure
  - `src/*.rs`, source code of the project
  - `Cargo.toml`, project definition and configuration
- Usual files
  - `LICENSE`, licensing and copyright notice
  - `CODE_OF_CONDUCT`, code of conduct expected by the project
  - `CITATION.cff`, copyright notice
  - `CONTRIBUTING.md`, contributing notice
- Git repository
  - `.gitignore`, set to ignore build directory (`target`) and lock files
  - `.github/workflows`, set to contains minimal CI workflow (check, unit tests, rustfmt, clippy)
  - `.github/ISSUE_TEMPLATE`, set to contain minimal bug report template
- vscode et al.
  - `.vscode/settings.json`, set to contain minimal rust settings
  - `.vscode/tasks.json`, set to contain minimal test task
  - `.vscode/launch.json`, set to contain minimal test launch task
