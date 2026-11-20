class Rho < Formula
  desc "Minimal agentic coding CLI harness in Rust"
  homepage "https://github.com/casonadams/rho"
  version "0.13.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.13.3/rho-0.13.3-aarch64-apple-darwin.tar.gz"
      sha256 "b4bc5a9fd043ee44333a21ca080e7a84e47d6ad829c28b7dc568353e8da9591f"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.13.3/rho-0.13.3-x86_64-apple-darwin.tar.gz"
      sha256 "ce792cf8c9ea2b409cfc385ab4fdef3004de5fb9e442c5609b47530df2b4dcb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.13.3/rho-0.13.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6bf837668463156941f9a41815dfca1a0ffc0b57e8054359b8ced5b351ca687b"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.13.3/rho-0.13.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e17f4f8cf0b669ad318f71630b2eff46da6f9857fa3164bd7463b1446f368f80"
    end
  end

  def install
    bin.install "rho"
  end

  test do
    assert_match "rho #{version}", shell_output("#{bin}/rho --version")
  end
end
