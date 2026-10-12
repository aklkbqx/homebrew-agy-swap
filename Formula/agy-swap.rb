class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.11.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.6/agy-swap_v2.11.6_darwin_arm64"
      sha256 "c85bff359f78c34080f2427470ef1f0329e0438cff745506622eadc649d6467d"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.6/agy-swap_v2.11.6_darwin_amd64"
      sha256 "9200f14de494a8dde58a788295af2cd9910f8e58647e70be9928496569fb6e61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.6/agy-swap_v2.11.6_linux_arm64"
      sha256 "26b6291939037476c45057202551da56033142d099c6b7a4427de82c4424e3f3"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.6/agy-swap_v2.11.6_linux_amd64"
      sha256 "7c75a4c5d889d143e4e1fcfe1ab723cdf2f87e93b0797715a5bd43a3a9778bc1"
    end
  end

  def install
    binary = Dir["agy-swap_v#{version}_*"].first
    bin.install binary => "agy-swap"
  end

  test do
    assert_match "agy-swap v#{version}", shell_output("#{bin}/agy-swap --version")
  end
end
