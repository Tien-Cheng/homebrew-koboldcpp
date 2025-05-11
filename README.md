# homebrew-koboldcpp

This tap provides Homebrew formulae for installing [KoboldCpp](https://github.com/LostRuins/koboldcpp) binaries for different platforms.

## Installation

Add the tap:

```sh
brew tap Tien-Cheng/koboldcpp
```

### Available Formulae
Use the appropriate formula for your platform:
- macOS ARM64 (Apple Silicon): `brew install Tien-Cheng/koboldcpp/koboldcpp-mac`
- Linux x86_64 (CUDA 12.1): `brew install Tien-Cheng/koboldcpp/koboldcpp-cuda1210`
- Linux x86_64 (CUDA 11.5): `brew install Tien-Cheng/koboldcpp/koboldcpp-cuda1150`
- Linux x86_64 (no CUDA): `brew install Tien-Cheng/koboldcpp/koboldcpp-nocuda`

## Usage
After installing, you can run:
```sh
# Start GUI
koboldcpp
```

## Update
This tap is automatically kept up to date.
Get the latest version with:
```sh
brew upgrade
```

## License 
Each formula is distributed under the license used by KoboldCpp (AGPL-3.0).