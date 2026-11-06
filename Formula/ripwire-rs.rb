class RipwireRs < Formula
  desc "High-throughput agent context router and deterministic static analysis engine"
  homepage "https://github.com/casonadams/ripwire-rs"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.7.0/ripwire-rs-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "12d1f7f3716f9dffdaec6a87d3e5fdcc04e2e3103449856a02fcf119637f5ae1"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.7.0/ripwire-rs-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "9b42ecf1841d9e18281e30f95f48a57f86c2cf7d303141a113fa576e1499702c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.7.0/ripwire-rs-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d3992745fe2877c2ee13f10ade685d872f3e08c5373f8b664717a6ecd7c349e4"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.7.0/ripwire-rs-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f263a8f176a06fbad4085b3811e92ed41a6c5c836b77e0845e9c5500fb89ff63"
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
