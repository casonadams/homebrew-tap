class Mpx < Formula
  desc "Simple, performant process and stream multiplexer in Rust"
  homepage "https://github.com/casonadams/mpx"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.2.0/mpx-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "7368d56bdb334fcb8d3c5ab4289bff998b3c7642de91f452d075525fe9cbc9a6"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.2.0/mpx-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f41db0ef7886f1a7ffee38e80342c8b210998956f202f969d64b7308086313fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.2.0/mpx-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0ee27a09c4ef2f121d3ef25fce3531dbf16f4fa51bf762fc955df1a0d44a55c7"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.2.0/mpx-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e05aa5a50e4acf8ca7f81a78eb813106728b42cdfedf701590082ae87ca1590d"
    end
  end

  def install
    bin.install "mpx"
  end

  test do
    assert_match "mpx #{version}", shell_output("#{bin}/mpx --version")
  end
end
