class RipwireRs < Formula
  desc "High-throughput agent context router and deterministic static analysis engine"
  homepage "https://github.com/casonadams/ripwire-rs"
  version "0.7.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.7.1/ripwire-rs-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "7ae2bbe747aeceae542c305023239541c1a1dd479d8d54412b5fda9dcd850fe4"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.7.1/ripwire-rs-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "75c1ebd58d32da0091a1cdd120502bc9e874b9566ddafcd348962b1898ca7a08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.7.1/ripwire-rs-0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d970521e41a37ddd4a472de9b2022885da91672828a9e6b3d360dba041ac28fc"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.7.1/ripwire-rs-0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c0e6a7b78cabfa97fbe68f3a4816cdeab5bc029e8412845591a16fc2cfdedba0"
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
