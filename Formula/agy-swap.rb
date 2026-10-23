class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.16.0/agy-swap_v2.16.0_darwin_arm64"
      sha256 "d43c68c9dad846300e2c1333056e5f1ebf79e20d70cc23b94166fb81e59a7c89"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.16.0/agy-swap_v2.16.0_darwin_amd64"
      sha256 "5901a8de1a61958b904e43cc40146b5544fee0c8efb00697b783e9665e570882"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.16.0/agy-swap_v2.16.0_linux_arm64"
      sha256 "ac0bcf045de915a2e6a3f9962d2feab9f83897d0ea89e2c18be8f89ea7388238"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.16.0/agy-swap_v2.16.0_linux_amd64"
      sha256 "a291f12cd16463a5fb3b0540907be2426f90fd0874975a839cdbf243bab68ded"
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
