class Mpx < Formula
  desc "Simple, performant process and stream multiplexer in Rust"
  homepage "https://github.com/casonadams/mpx"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.3.1/mpx-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "be0f4bea88d7dbb5a8019cdc409e6c3712c8c92262bf3b37c186c29a7b8c5d78"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.3.1/mpx-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "21798c0babc43dd12dee4c3a860e7a888ad3642d2d016f3ad3cbade46c94ddd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.3.1/mpx-0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc6fd77a8956453e1afa19ae1b6782016a0e879585ff7eee53de9594ee3b89b7"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.3.1/mpx-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2af5a0e69cf03afb0600c66dc65fe8bd350bc390017f5a28609ae985969046c5"
    end
  end

  def install
    bin.install "mpx"
  end

  test do
    assert_match "mpx #{version}", shell_output("#{bin}/mpx --version")
  end
end
