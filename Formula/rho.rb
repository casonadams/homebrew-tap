class Rho < Formula
  desc "Minimal agentic coding CLI harness in Rust"
  homepage "https://github.com/casonadams/rho"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.6.0/rho-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "be80b71e7807cb48c23777911a100603fe4d1232ac7dacda84bc2236036347a9"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.6.0/rho-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "c837effb86b19c398905205386ab4357d0ca5277a7d93b2c01d09d1bac2fe523"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.6.0/rho-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80521874db2633e5bae6a5e076e226be3f6d3f989b0195b31df93148af7b6964"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.6.0/rho-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b7af97015f931807af501e99987e6ea0834647ae32e0d16f827007171fb4d45"
    end
  end

  def install
    bin.install "rho"
  end

  test do
    assert_match "rho #{version}", shell_output("#{bin}/rho --version")
  end
end
