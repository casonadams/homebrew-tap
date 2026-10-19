class RipwireRs < Formula
  desc "High-throughput agent context router and deterministic static analysis engine"
  homepage "https://github.com/casonadams/ripwire-rs"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.1/ripwire-rs-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "54ed02e8137cfccddde20ed0c0f5af444914432f4070c56e0be011248cbf9119"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.1/ripwire-rs-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "e0ea553a03b96a121ef1c5c69d67603de6caf8dfafff5ef8312a0661495befd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.1/ripwire-rs-0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c994a112cb0511b97c30ccfa12f396b37ec7755541d7c6e8d3168000b19a9e92"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.1/ripwire-rs-0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08c31036ac36292fd878ecc8e7b220336cdeefd5398beb90b1152239078159bc"
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
