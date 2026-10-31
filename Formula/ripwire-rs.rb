class RipwireRs < Formula
  desc "High-throughput agent context router and deterministic static analysis engine"
  homepage "https://github.com/casonadams/ripwire-rs"
  version "0.6.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.8/ripwire-rs-0.6.8-aarch64-apple-darwin.tar.gz"
      sha256 "29b0f54874e59737a26ad528fb63eb1ccae02cc69b4fadb572bef40eee6b4678"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.8/ripwire-rs-0.6.8-x86_64-apple-darwin.tar.gz"
      sha256 "cb5733bb66f665f26132c8b692137e0e10d5a295ecf1709e9e0d9a7b3cf0ee57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.8/ripwire-rs-0.6.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fcb58e2a7ea09cd7020a432e7b3a077ae9f9494231b2b7d36ffdfaa7e23abc7c"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.8/ripwire-rs-0.6.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "be8aeab372c342d470794cf8439479c90ae8548b7d01e28c1f6bf1c294ab4d0c"
    end
  end

  def install
    bin.install "ripwire-rs"
    bin.install_symlink "ripwire-rs" => "rw"
    if File.exist?("ripwire-rs.1")
      man1.install "ripwire-rs.1"
      man1.install_symlink "ripwire-rs.1" => "rw.1"
    end
  end

  test do
    assert_match "ripwire-rs #{version}", shell_output("#{bin}/ripwire-rs --version")
  end
end
