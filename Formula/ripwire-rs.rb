class RipwireRs < Formula
  desc "High-throughput agent context router and deterministic static analysis engine"
  homepage "https://github.com/casonadams/ripwire-rs"
  version "0.6.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.7/ripwire-rs-0.6.7-aarch64-apple-darwin.tar.gz"
      sha256 "43ddaee4d0546f1079ccb3b234952a35df664f08b0e0dfc22f5ea688bb99088a"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.7/ripwire-rs-0.6.7-x86_64-apple-darwin.tar.gz"
      sha256 "d1cc7c4dbee2fde430d56057823d9bffec7462777e12057e9d7a3055e1bad232"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.7/ripwire-rs-0.6.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72efc4eecde6fe026e686dd4aaf40d0447be5a6b08fadb5814b4b692fac971eb"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.7/ripwire-rs-0.6.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b606f099dca49fba47c52267d5e97a0845b3a7edacd0c8be598c322c5533bfb"
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
