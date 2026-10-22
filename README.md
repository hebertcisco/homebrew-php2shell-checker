# homebrew-php2shell-checker

Homebrew tap for [php2shell_checker](https://github.com/hebertcisco/php2shell_checker),
a security-focused static analyzer for PHP runtime exposure and configuration risk.

## Installation

```sh
brew tap hebertcisco/php2shell-checker
brew install php2shell-checker
```

Verify the installation:

```sh
php2shell_checker version
php2shell_checker --help
php2shell_checker detectors list
```

## Updating

```sh
brew update
brew upgrade php2shell-checker
```

## Local development

To test the formula without publishing the tap:

```sh
brew install --build-from-source ./Formula/php2shell-checker.rb
brew test php2shell-checker
```

To check the formula:

```sh
brew style ./Formula/php2shell-checker.rb
brew audit --formula ./Formula/php2shell-checker.rb
```

The formula builds the tagged upstream Rust source with Cargo. Release and
checksum maintenance is documented in [`docs/maintaining.md`](docs/maintaining.md).

See the upstream project for the scanner's architecture, CLI reference,
advisory format, and safety model:

- [README](https://github.com/hebertcisco/php2shell_checker/blob/main/README.md)
- [Homebrew documentation](https://github.com/hebertcisco/php2shell_checker/blob/main/docs/homebrew.md)
- [Security policy](https://github.com/hebertcisco/php2shell_checker/blob/main/SECURITY.md)
