class Mpx < Formula
  desc "Simple, performant process and stream multiplexer in Rust"
  homepage "https://github.com/casonadams/mpx"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.4.0/mpx-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "e65ba8d74be287f88397335a19a80daa710f2e4564899d49339418ad23f3749b"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.4.0/mpx-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "7beb26bc74506a3a6bd4a5a37ebf34dca7baaee6711dfb45a61ae5b5bedee3c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.4.0/mpx-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a80367a9d690d741b09f786cdd08cbaa22a306a258033b110ab1470ec898732"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.4.0/mpx-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e408cf9409b4a6ed39b3dd1a10950acc125793349aac9fe7448c860b7b2c4a06"
    end
  end

  def install
    bin.install "mpx"
  end

  test do
    assert_match "mpx #{version}", shell_output("#{bin}/mpx --version")
  end
end
