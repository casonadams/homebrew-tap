class RipwireRs < Formula
  desc "High-throughput agent context router and deterministic static analysis engine"
  homepage "https://github.com/casonadams/ripwire-rs"
  version "0.6.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.3/ripwire-rs-0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "8b0ea2d657d344a994cbc9d4a1cf42df7009309b9300759658ded9e446d8bf81"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.3/ripwire-rs-0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "cbf4bf2fed7dd9e9e5debcbe47d27920917d269d80d65cb4ae5aefa51fa42b08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.3/ripwire-rs-0.6.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ffbaa21a50da413534aff8773f61fbd4c2dc7ecdf427a95757fe6c1f4219e9a"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.3/ripwire-rs-0.6.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf9a7cc3660228872b41d0f5d561f5c1de7ae57c438396e2274057d4005e79ad"
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
