class Rho < Formula
  desc "Minimal agentic coding CLI harness in Rust"
  homepage "https://github.com/casonadams/rho"
  version "0.13.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.13.2/rho-0.13.2-aarch64-apple-darwin.tar.gz"
      sha256 "98b0c139c9625e1356cc81581ba83a78436cf86055e0ce74e2b8d30560f5d028"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.13.2/rho-0.13.2-x86_64-apple-darwin.tar.gz"
      sha256 "38e341df5f273d03f84a278ce0b896965ecc47f11f93b75ca0d69e20011845ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.13.2/rho-0.13.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "774c87ac3513986d1074ab987b5c2db48703c2e856719145c76cd5715bb23b93"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.13.2/rho-0.13.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7604ed6067379401d2ec4b4b80e9c103003e5143c12a7a6280d4a788d53dd44"
    end
  end

  def install
    bin.install "rho"
  end

  test do
    assert_match "rho #{version}", shell_output("#{bin}/rho --version")
  end
end
