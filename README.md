# homebrew-tap & Linux Package Repository

Official Homebrew tap, APT repository, and RPM repository for [`ripwire-rs`](https://github.com/casonadams/ripwire-rs) and [`rho`](https://github.com/casonadams/rho).

## Homebrew (macOS & Linux)

```sh
brew install casonadams/tap/ripwire-rs
brew install casonadams/tap/rho
```

## APT (Ubuntu & Debian — `amd64` & `arm64`)

```sh
echo "deb [trusted=yes] https://casonadams.github.io/homebrew-tap/apt stable main" | sudo tee /etc/apt/sources.list.d/casonadams.list
sudo apt update
sudo apt install ripwire-rs rho
```

## DNF / RPM (Fedora, RHEL & CentOS — `x86_64` & `aarch64`)

```sh
curl -fsSL https://casonadams.github.io/homebrew-tap/rpm/casonadams.repo | sudo tee /etc/yum.repos.d/casonadams.repo
sudo dnf install ripwire-rs rho
```
