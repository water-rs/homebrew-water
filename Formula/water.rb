class Water < Formula
  desc "Cross-platform tooling for WaterUI apps"
  homepage "https://github.com/water-rs/waterui"
  version "0.1.2"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.2/waterui-cli-aarch64-apple-darwin.tar.xz"
      sha256 "3adfac295d9f9efd246030236f092d4f5aabdeaf9739b765bb25306e46720682"
    else
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.2/waterui-cli-x86_64-apple-darwin.tar.xz"
      sha256 "c7b0347196c5d756e8d2860e1ac959efee977e895f213a594af952c6b3091bb9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.2/waterui-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "53c90ca619976a36e55f2430603c9b40443f94d02f3e4c44bbcbb5fc0650e320"
    else
      url "https://github.com/water-rs/waterui/releases/download/cli-v0.1.2/waterui-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "ad0cc870c778a3418421083eaa2a0ef930cda81aae9ec7a3691a7b2498e83155"
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
