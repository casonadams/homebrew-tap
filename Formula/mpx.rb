class Mpx < Formula
  desc "Simple, performant process and stream multiplexer in Rust"
  homepage "https://github.com/casonadams/mpx"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.3.2/mpx-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "a8024e378e5588c875fac176504b743a4032d8762cbe783afe690674f89c252b"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.3.2/mpx-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "637cecfad724c6bce674a1550f2f257f4547e365d0d183c0c456020208fff342"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.3.2/mpx-0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98e8dab6c71e694ec182ec2ad60835c6da0ecb6bc3569024b83fd65e00cf80fb"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.3.2/mpx-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "534bfa6df8903ccd066b1ea2a9b25ad81563aa9cda63fb1a2a0ab04bbbaf3013"
    end
  end

  def install
    bin.install "mpx"
  end

  test do
    assert_match "mpx #{version}", shell_output("#{bin}/mpx --version")
  end
end
