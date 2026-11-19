class Rho < Formula
  desc "Minimal agentic coding CLI harness in Rust"
  homepage "https://github.com/casonadams/rho"
  version "0.13.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.13.0/rho-0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "6546c345a113217531f72142946cd2b2196d433c7f6d26e11c3de9c4dc3efc03"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.13.0/rho-0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "6489e707cbb9df80787f008f47102b7a4b7fd522bd2b641f82c5adb35e43b61b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.13.0/rho-0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb44d518d29a204853a0a62b88765c5c4daa15754d66b50a8922ab3d749943b0"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.13.0/rho-0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a407add48f65b7440f2b0a630e6565b119563a86591f1889b812d20bdac87a3b"
    end
  end

  def install
    bin.install "rho"
  end

  test do
    assert_match "rho #{version}", shell_output("#{bin}/rho --version")
  end
end
