# Formula maintenance

## Upstream requirements

Before updating this formula, the
[`hebertcisco/php2shell_checker`](https://github.com/hebertcisco/php2shell_checker)
repository must have:

1. a versioned `vX.Y.Z` release tag;
2. the matching version in `Cargo.toml`;
3. passing CI for the release;
4. release notes describing user-visible changes.

## Updating the formula

Update the `url` and `version` in `Formula/php2shell-checker.rb`. Once the
release archive is public, calculate its checksum from the exact URL used by
the formula:

```sh
VERSION=0.2.0
brew fetch --build-from-source \
  "https://github.com/hebertcisco/php2shell_checker/archive/refs/tags/v${VERSION}.tar.gz"
```

Copy the reported checksum into the formula:

```ruby
sha256 "..."
```

Never invent or reuse a checksum from another archive.

## Validation

Run the following checks from the tap repository:

```sh
brew style ./Formula/php2shell-checker.rb
brew audit --formula ./Formula/php2shell-checker.rb
brew install --build-from-source ./Formula/php2shell-checker.rb
brew test php2shell-checker
```

The installed executable is named `php2shell_checker`, while the Homebrew
formula name is `php2shell-checker`.

## Packaging policy

- Build only from a versioned upstream release tag.
- Keep the formula free of credentials and runtime secrets.
- Preserve the scanner's offline, non-executing safety defaults.
- Keep the formula license aligned with the upstream MIT license.
