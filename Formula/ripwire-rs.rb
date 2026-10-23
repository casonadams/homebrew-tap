class RipwireRs < Formula
  desc "High-throughput agent context router and deterministic static analysis engine"
  homepage "https://github.com/casonadams/ripwire-rs"
  version "0.6.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.5/ripwire-rs-0.6.5-aarch64-apple-darwin.tar.gz"
      sha256 "db0e59880e653c867535474b6fc87879cccfc9c1a634f400f79bf1f74bc82c1a"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.5/ripwire-rs-0.6.5-x86_64-apple-darwin.tar.gz"
      sha256 "81727a8d64bd3184329d74d3f6eec0f6a09aff54567b3cda41deaf5e9e515d00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.5/ripwire-rs-0.6.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "099714b2f7066f76556e17f17f3f18444af48dba858cd503a938ae3d85b70953"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.5/ripwire-rs-0.6.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd90d81f866edb5bf99c6b4f4ed0171744a2c047ab03f6de55296d479b4ed35b"
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
