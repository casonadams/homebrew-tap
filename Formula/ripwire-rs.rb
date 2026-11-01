class RipwireRs < Formula
  desc "High-throughput agent context router and deterministic static analysis engine"
  homepage "https://github.com/casonadams/ripwire-rs"
  version "0.6.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.9/ripwire-rs-0.6.9-aarch64-apple-darwin.tar.gz"
      sha256 "eac5f6e093fd14958699f77635e7b8402fc5b0ccc2a585e09e35e226194aeea2"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.9/ripwire-rs-0.6.9-x86_64-apple-darwin.tar.gz"
      sha256 "a9850b51e3267dc9bf51fdb70e275ef4850e6e14e7ccf224f81f366dea3652ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.9/ripwire-rs-0.6.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52acf191ac22621ee6cec646f790072fb5a8c62cc493f3a308337eb7375d78e0"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.9/ripwire-rs-0.6.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ef761d558ac4ae0a6275c1c7fc19dedca49ba18adcbc054b71cd0343ec6e6b1"
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
