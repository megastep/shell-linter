# Shell Linter

[![Release](https://img.shields.io/github/release/azohra/shell-linter.svg)](https://github.com/azohra/shell-linter/releases)
[![Marketplace](https://img.shields.io/badge/GitHub-Marketplace-red.svg)](https://github.com/marketplace/actions/shell-linter)
[![Actions Status](https://github.com/azohra/shell-linter/workflows/CI-workflow/badge.svg)](https://github.com/azohra/shell-linter/actions?query=branch%3Adevelop)


A GitHub Action that performs static analysis for shell scripts using [ShellCheck](https://github.com/koalaman/shellcheck).

![](docs/images/preview.png)

<br>

## Usage

Shell Linter can perform static analysis in various ways. You can use it to lint all the shell scripts in your project or lint a a specific file or folder using the `path` parameter. Specific use cases are shown below:

Run static analysis for all of the shell scripts.
```yml
jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - name: Lint check
        uses: megastep/shell-linter@v0.3.1
```

Run static analysis for a single shell script.
```yml
      - name: Lint check
        uses: megastep/shell-linter@v0.3.1
        with:
          path: "setup.sh"
```

Run static analysis for multiple shell scripts **with or without** extension.
```yml
      - name: Lint check
        uses: megastep/shell-linter@v0.3.1
        with:
          path: "setup,deploy.sh"
```

Run static analysis for all the shell scripts in a folder.
```yml
      - name: Lint check
        uses: megastep/shell-linter@v0.3.1
        with:
          path: "src"
```

Run static analysis using a **wildcard** path
```yml
      - name: Lint check
        uses: megastep/shell-linter@v0.3.1
        with:
          path: "src/*.sh"
```

Run static analysis for all the shell scripts and report any issues with error severity.
```yml
      - name: Lint check
        uses: megastep/shell-linter@v0.3.1
        with:
          severity: "error"
```

<br>

## Input

### `path`

Optional. Execute lint check on a specific file or folder. Default: `.`

### `severity`

Optional. Specify minimum severity of errors to consider [style, info, warning, error]. Default: `style`

<br>

## License
This software is available as open source under the terms of the MIT License.
