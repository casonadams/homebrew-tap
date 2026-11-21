class Rho < Formula
  desc "Minimal agentic coding CLI harness in Rust"
  homepage "https://github.com/casonadams/rho"
  version "0.15.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.15.0/rho-0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "fd93c1ba6ba31bde001477c7e78dbfb55bce137fb9cf9309c7ed4545637cfb15"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.15.0/rho-0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "2e01152c45aa202cdeaa410ee72e2c5b69fc79a7deed693d187bd4a60b037729"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.15.0/rho-0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c31b0604972bccf3b397963c33f51f4de3ef9b5b201837731493403efe5ac6d"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.15.0/rho-0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88a6fe2df46e798f9ee64e7a345fef0a7d0775623604ce82ff05407e7119c02d"
    end
  end

  def install
    bin.install "rho"
  end

  test do
    assert_match "rho #{version}", shell_output("#{bin}/rho --version")
  end
end
