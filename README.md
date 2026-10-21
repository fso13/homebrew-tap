# Homebrew Tap for RadioMac

Menu-bar radio player for macOS.

```bash
brew tap fso13/tap
brew trust fso13/tap   # Homebrew 7+
brew install --cask radiomac
```

Or install directly:

```bash
brew trust fso13/tap   # Homebrew 7+
brew install --cask fso13/tap/radiomac
```

The cask tracks the latest stable [RadioMac release](https://github.com/fso13/RadioApple/releases/latest).
The release workflow updates `Casks/radiomac.rb` automatically.

The app is ad-hoc signed unless Developer ID credentials are configured. If
Gatekeeper blocks the first launch, open System Settings -> Privacy & Security
and choose "Open Anyway", or install with `--no-quarantine`.
