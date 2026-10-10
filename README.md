# homebrew-tap

Homebrew tap for Graft and HerdrX.

```sh
brew install --cask cleanwk/tap/graft
```

Install HerdrX:

```sh
brew install --cask cleanwk/tap/herdrx
brew update && brew upgrade --cask herdrx
```

The Update HerdrX workflow reads the latest stable cleanwk/herdrX release every
15 minutes, checks explicit notarization status, architectures and GitHub asset SHA-256,
then commits the cask. It can also run manually. No cross-repository personal
access token is required. Before the first verified release, no placeholder cask
is created. Graft's existing cask is unchanged.

HerdrX defaults to ad-hoc signing without Apple notarization. If macOS blocks
the first launch, try opening the app, then use System Settings > Privacy &
Security > Open Anyway. Homebrew quarantine remains enabled.
