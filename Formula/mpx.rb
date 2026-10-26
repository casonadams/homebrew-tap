class Mpx < Formula
  desc "Simple, performant process and stream multiplexer in Rust"
  homepage "https://github.com/casonadams/mpx"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.1.1/mpx-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "fbff169578cd6d0776c42beda8dcbccb922f223b289d08677ecd0d3486f87748"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.1.1/mpx-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "b5c10cc43e7952c209aee1d73db4cd6517de8f70029c454da7d977a4c73e0f83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.1.1/mpx-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5db3ee96b6fdfa9add9d65ce63a1b12fbcfba87b00119b05d31039be91894276"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.1.1/mpx-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5833cc685fe26560826a18a4d14073ea8f89a91f49c1696cfd1afc26d0661d2b"
    end
  end

  def install
    bin.install "mpx"
  end

  test do
    assert_match "mpx #{version}", shell_output("#{bin}/mpx --version")
  end
end
