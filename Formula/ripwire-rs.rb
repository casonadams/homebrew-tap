class RipwireRs < Formula
  desc "High-throughput agent context router and deterministic static analysis engine"
  homepage "https://github.com/casonadams/ripwire-rs"
  version "0.7.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.7.2/ripwire-rs-0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "f99877086dad160f1d97722fae87ed90fcd191480f4022527748b2d2b2e26e65"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.7.2/ripwire-rs-0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "0a2272a328b2c5a51d3ae1911eb7c5cf20a31a2e13497ba93dbe57cce7af6792"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.7.2/ripwire-rs-0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ceb2c4483000eff2f04319677e778f224fe3619b576d9d3263b42c3abf30983"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.7.2/ripwire-rs-0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9cb463232f8c9810c412e598521f65766c0bcde9e2a77139bf6d04c9da248677"
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
