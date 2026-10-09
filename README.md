# homebrew-tap

Homebrew tap for Graft and Herd-X.

```sh
brew install --cask cleanwk/tap/graft
```

Herd-X becomes available after its first signed, notarized stable release:

```sh
brew install --cask cleanwk/tap/herd-x
brew update && brew upgrade --cask herd-x
```

The Update Herd-X workflow reads the latest stable cleanwk/herdrX release every
15 minutes, checks notarization metadata, architectures and GitHub asset SHA-256,
then commits the cask. It can also run manually. No cross-repository personal
access token is required. Before the first verified release, no placeholder cask
is created. Graft's existing cask is unchanged.
