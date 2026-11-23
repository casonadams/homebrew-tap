class Rho < Formula
  desc "Minimal agentic coding CLI harness in Rust"
  homepage "https://github.com/casonadams/rho"
  version "0.17.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.17.0/rho-0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "5fa05a53d0b342f40e504b127f3e046dbd36ddefc2fb95214e30662676feb909"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.17.0/rho-0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "1da0ee95b96115ebf8df12c396dbbb84afa1a142b0d2dfc83372f63b67e58ffe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.17.0/rho-0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "61df59cca2e349ab1afd34ccc371fe03071b8febc81b72eac34fd92b03b8c123"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.17.0/rho-0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d04c0d3e9ba0ec55c877d41069fb4f560f93ceab362bac3cf9f7f4912056282"
    end
  end

  def install
    bin.install "rho"
  end

  test do
    assert_match "rho #{version}", shell_output("#{bin}/rho --version")
  end
end
