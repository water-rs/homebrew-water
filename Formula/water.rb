class Water < Formula
  desc "Cross-platform tooling for WaterUI apps"
  homepage "https://github.com/water-rs/waterui"
  version "0.1.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.0/waterui-cli-aarch64-apple-darwin.tar.xz"
      sha256 "f71377c363ab97401e01d4776f71ac2b826645a92b12e9fc4c2835a12ca90800"
    else
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.0/waterui-cli-x86_64-apple-darwin.tar.xz"
      sha256 "9c91402c5bd5466de2ccab9026a50dbd31e45a2136db4e81e3baa28e07dc6a65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.0/waterui-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "8193e479be1c75ca9fde1af4be3bea391bb51897d7db0db3b1c0f712ff2370e8"
    else
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.0/waterui-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "2ee97928fc9e5f490fd89d61078d2b8ca169a22030a2619f081e419c07e6e5a3"
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
