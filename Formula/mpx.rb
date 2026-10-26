class Mpx < Formula
  desc "Simple, performant process and stream multiplexer in Rust"
  homepage "https://github.com/casonadams/mpx"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.1.2/mpx-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "bdcc6ed84ab2162b033d934bc6dba394b7a1a981af036721d5994013829b97da"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.1.2/mpx-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "5720d7f0315a5a3a55118a0a15f857f84951de3232ccf6f081ec5147bfe517d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/mpx/releases/download/v0.1.2/mpx-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "386a5a4a3eb576bddfe7bc406d26c93a43b3819980c0b3aef0fb71796c2bf4e3"
    else
      url "https://github.com/casonadams/mpx/releases/download/v0.1.2/mpx-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "20b5f7a342b0ebf8046cb0df13cf33cf3b78d2f90c66a0d87b6093be06ea642c"
    end
  end

  def install
    bin.install "mpx"
  end

  test do
    assert_match "mpx #{version}", shell_output("#{bin}/mpx --version")
  end
end
