class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.3/agy-swap_v2.11.3_darwin_arm64"
      sha256 "3cc2b13629b6547acb8ca9bfa0392b6477bc69b625d444555f5da062e0b0da63"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.3/agy-swap_v2.11.3_darwin_amd64"
      sha256 "0cc904ca376caf282e4d3738d02ca2ed7fd3ba9f71d8e54097d5d5a013d20c07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.3/agy-swap_v2.11.3_linux_arm64"
      sha256 "449b284e2216e3ccaa3b0fd8570c8b484a5d209061545dcc3f70530df7aa5e25"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.3/agy-swap_v2.11.3_linux_amd64"
      sha256 "c61e429be848eaeeb8ec5536201728b11e2afcc41dd4bd7b2ba0fa3fdbb09cd7"
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
