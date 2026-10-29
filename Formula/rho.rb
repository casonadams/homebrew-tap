class Rho < Formula
  desc "Minimal agentic coding CLI harness in Rust"
  homepage "https://github.com/casonadams/rho"
  version "0.12.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.12.2/rho-0.12.2-aarch64-apple-darwin.tar.gz"
      sha256 "b2ebc64168c01ffd6acb3680bf2deb65851a43d945d763842edd1d8b45cb5853"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.12.2/rho-0.12.2-x86_64-apple-darwin.tar.gz"
      sha256 "ec6e6c3d6be04daff2a1adb8125d2c5436b6895212d7de62690332a20b92628a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.12.2/rho-0.12.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fcc05781f79a7b2c19ed2e00b94273b7379654c64fdf436a3d5801634359e558"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.12.2/rho-0.12.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40d20a2aef89eb139b45a93158ba3777aa7fd597d945544d297cdf8fe91effb5"
    end
  end

  def install
    bin.install "rho"
  end

  test do
    assert_match "rho #{version}", shell_output("#{bin}/rho --version")
  end
end
