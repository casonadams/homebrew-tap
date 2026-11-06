class Mpx < Formula
  desc "Simple, performant process and stream multiplexer in Rust"
  homepage "https://github.com/casonadams/mpx"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.3.0/mpx-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "93fae902d72f1ce0c7a074eb99d918fcf9e6135138a3592e79aa9efdb20a791e"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.3.0/mpx-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "b2f475717d1424669908fef17a35dfadda04a7bc58aeaeadf0971ae39a1f85ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.3.0/mpx-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b2f1bde10940436238330e4d225aac1bc5990e5b7085e2282e258e67f705633"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.3.0/mpx-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "493a34c69c4cc896abaf00e27cad6b386b1a7b9bcc4d964c1718365d27e9ca0d"
    end
  end

  def install
    bin.install "mpx"
  end

  test do
    assert_match "mpx #{version}", shell_output("#{bin}/mpx --version")
  end
end
