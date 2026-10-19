class RipwireRs < Formula
  desc "High-throughput agent context router and deterministic static analysis engine"
  homepage "https://github.com/casonadams/ripwire-rs"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.0/ripwire-rs-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "5119c50476e242693687455873db76afb9bb2ba8ec39b1147cc3356fd6a192bf"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.0/ripwire-rs-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "c989c497282e2a60b69eb6ca9a481857a2faa60ec0713cb313a68d7c9da60f80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.0/ripwire-rs-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd9a29eeb62a37440043bee4c87d5a52b182b5e19dd910b08ed225fe75d0d5ed"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.0/ripwire-rs-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ec7711dc426c1977ad357a0fecde43efb4d5baf25c0d4bbe3fbc9d66cd7c0a1"
    end
  end

  def install
    bin.install "ripwire-rs"
    man1.install "ripwire-rs.1" if File.exist?("ripwire-rs.1")
  end

  test do
    assert_match "ripwire-rs #{version}", shell_output("#{bin}/ripwire-rs --version")
  end
end
