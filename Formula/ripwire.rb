class Ripwire < Formula
  desc "High-throughput agent context router and deterministic static analysis engine"
  homepage "https://github.com/casonadams/rwire"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rwire/releases/download/v0.1.0/ripwire-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000001"
    else
      url "https://github.com/casonadams/rwire/releases/download/v0.1.0/ripwire-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000002"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rwire/releases/download/v0.1.0/ripwire-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000003"
    else
      url "https://github.com/casonadams/rwire/releases/download/v0.1.0/ripwire-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000004"
    end
  end

  def install
    bin.install "rw"
    bin.install_symlink "rw" => "ripwire"
  end

  test do
    assert_match "rw #{version}", shell_output("#{bin}/rw --version")
    assert_match "rw #{version}", shell_output("#{bin}/ripwire --version")
  end
end
