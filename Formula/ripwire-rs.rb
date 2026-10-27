class RipwireRs < Formula
  desc "High-throughput agent context router and deterministic static analysis engine"
  homepage "https://github.com/casonadams/ripwire-rs"
  version "0.6.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.6/ripwire-rs-0.6.6-aarch64-apple-darwin.tar.gz"
      sha256 "af111cf88ebe323a05ebb8a522f0ed9345859909e7f4b369c73e1c1af1d47d6e"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.6/ripwire-rs-0.6.6-x86_64-apple-darwin.tar.gz"
      sha256 "a81624aed9b69f029d9d762d49015e0a883744e537ebb935a9c53775feac6a22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.6/ripwire-rs-0.6.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28c9070ba998dcff9f2e5eedab47611816a8c5a2593881af958b1acc4469aae5"
    else
      url "https://github.com/casonadams/ripwire-rs/releases/download/v0.6.6/ripwire-rs-0.6.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97876b3c37a9d4e61766cfe2241de5a1547be61554ce65d37f8f368ac1811372"
    end
  end

  def install
    bin.install "ripwire-rs"
    bin.install_symlink "ripwire-rs" => "rw"
    if File.exist?("ripwire-rs.1")
      man1.install "ripwire-rs.1"
      man1.install_symlink "ripwire-rs.1" => "rw.1"
    end
  end

  test do
    assert_match "ripwire-rs #{version}", shell_output("#{bin}/ripwire-rs --version")
  end
end
