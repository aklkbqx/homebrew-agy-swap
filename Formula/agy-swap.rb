class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.11.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.10/agy-swap_v2.11.10_darwin_arm64"
      sha256 "f9effc27d7d24f90f0d3c8137b87c3fc1a035263408b8fb0c6f9cc82492eb425"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.10/agy-swap_v2.11.10_darwin_amd64"
      sha256 "1a992e5e38adc472b46f16bfadbeca0edaacafd090564a75d5028576ef62ea7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.10/agy-swap_v2.11.10_linux_arm64"
      sha256 "ec5ac02d572a70f2370a305795d5dceb9a80cbc22c43d0559ff4146b73e8bbd6"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.10/agy-swap_v2.11.10_linux_amd64"
      sha256 "7d24d972ff67dcb733d6b89ecc728dc1ff16b0e5e48846b7308e603b162c3bba"
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
