class Rho < Formula
  desc "Minimal agentic coding CLI harness in Rust"
  homepage "https://github.com/casonadams/rho"
  version "0.14.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.14.0/rho-0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "d4e13913cb16cce4df1ad69f471115eaecfe39d9227e079e6cd64cf15f73a0eb"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.14.0/rho-0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "269d88f1787277ad142f09ccf216808476d2177fdb6445464c52cef39ed24b0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.14.0/rho-0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3936573a550f14eb90abfff84ece70b07a78fe900435418741bd082bb0742f93"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.14.0/rho-0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "61c81801eac65c5867c0004b8cb280a2cd9274b71ad29d003dfc37cc25d87871"
    end
  end

  def install
    bin.install "rho"
  end

  test do
    assert_match "rho #{version}", shell_output("#{bin}/rho --version")
  end
end
