class Rho < Formula
  desc "Minimal agentic coding CLI harness in Rust"
  homepage "https://github.com/casonadams/rho"
  version "0.16.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.16.0/rho-0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "04202703092192515298438fcd264e97b6aeafe9b122546cfaa089f75430b789"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.16.0/rho-0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "b530960b53fd451509b8a137d434c928752ca064d121e579337febf40fbdc529"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/rho/releases/download/v0.16.0/rho-0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7490f1d78688aa24d4c7ab116aeb29251e21dd59fe9b57732cb6cd9654629e20"
    else
      url "https://github.com/casonadams/rho/releases/download/v0.16.0/rho-0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9dafc0541483757a0f03cd1abd54e0a025b8e48b2a72582a9ac11f5c8c786d7e"
    end
  end

  def install
    bin.install "rho"
  end

  test do
    assert_match "rho #{version}", shell_output("#{bin}/rho --version")
  end
end
