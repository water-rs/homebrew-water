class Water < Formula
  desc "Cross-platform tooling for WaterUI apps"
  homepage "https://github.com/water-rs/waterui"
  version "0.1.3"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.3/waterui-cli-aarch64-apple-darwin.tar.xz"
      sha256 "c04d75021cdbd9b19102431dd3f8e47a668505e7a2700fd0416a722face93487"
    else
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.3/waterui-cli-x86_64-apple-darwin.tar.xz"
      sha256 "0cd23b8335371ddb8169d1261a8d1c543e95fad188bde38e0177fc6e25dfe116"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.3/waterui-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "2083dc755f51d70ae4bc5625d05a0d355f5967e98cab28d0bec829db1752819f"
    else
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.3/waterui-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8001e2b3df65dfec7ab0f5bd8171d1e9b982e3eade71590b54d931bf93b11969"
    end
  end

  def install
    if File.exist?("water")
      bin.install "water"
    else
      bin.install Dir["*/water"]
    end
  end
end
