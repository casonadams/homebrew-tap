class Rho < Formula
  desc "Minimal agentic coding CLI harness in Rust"
  homepage "https://github.com/casonadams/rho"
  version "0.12.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.12.1/rho-0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "1def45486147667985d2988f8a8b40d00098e60c64d481886496c7b4fce0552a"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.12.1/rho-0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "24c1175221e95166cbf985be172f1dd8216ab0d0bddb729df2e6bdd5533530d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.12.1/rho-0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14ad7d874ac7c8c41e61ac15e6b8f738e317718aa7879ece349004cfde1f2476"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.12.1/rho-0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d5fb36ff5c12d5230fe6edc445172c2403852514a960dccd65a301ded91b0582"
    end
  end

  def install
    bin.install "rho"
  end

  test do
    assert_match "rho #{version}", shell_output("#{bin}/rho --version")
  end
end
