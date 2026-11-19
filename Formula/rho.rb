class Rho < Formula
  desc "Minimal agentic coding CLI harness in Rust"
  homepage "https://github.com/casonadams/rho"
  version "0.13.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.13.1/rho-0.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "d497135ef49772b6693542a84d3f720ad959ed67af58b4e5f8c6c8e5b0ea47a1"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.13.1/rho-0.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "7395d5b534be5b24a92ca6eaa705d6be49d17e130c52ea7bba9cba45e714b20d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.13.1/rho-0.13.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a013dedb24c377dcf45a2384dccd02549a2df25702f7aa08c91366345fde3f70"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.13.1/rho-0.13.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bcd4f03dd14f787b4b3fd4c19cf40fc053a3ed8db87451792456af5a94bea4f3"
    end
  end

  def install
    bin.install "rho"
  end

  test do
    assert_match "rho #{version}", shell_output("#{bin}/rho --version")
  end
end
