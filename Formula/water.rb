class Water < Formula
  desc "Cross-platform tooling for WaterUI apps"
  homepage "https://github.com/water-rs/waterui"
  version "0.1.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.1/waterui-cli-aarch64-apple-darwin.tar.xz"
      sha256 "a0003ee0ae8a2b66a4776d60e63883e5c3995790f3c7e2ab40592d37724ea251"
    else
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.1/waterui-cli-x86_64-apple-darwin.tar.xz"
      sha256 "b657163f3797c0d61931f0cf7f2a18ecb593806efebaf3036b6ee810f7d2f1a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.1/waterui-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "535d2a5c9e115794465f27c1cf14fd4d7068dce3a8b25f0b3d894d18817bed66"
    else
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.1/waterui-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "d9b5f40c673de22f38f385a95b85a36e935dcae8e1bb1d87c97ee506ce6d0af9"
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
