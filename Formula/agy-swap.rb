class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.0/agy-swap_v2.18.0_darwin_arm64"
      sha256 "2e2bb04504166812e0bee2b5efe76b5d274eacdbf0131259bfd3b5b9362ed5e7"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.0/agy-swap_v2.18.0_darwin_amd64"
      sha256 "eee9c1701007f94e1f47ab7af47971db2e0fa2c7c1e25c44bf80d670f86f7721"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.0/agy-swap_v2.18.0_linux_arm64"
      sha256 "aba7af2231100d71b87d5d3dcb7f862e2ee45d2d6fb64f13761b3ece02e24a14"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.0/agy-swap_v2.18.0_linux_amd64"
      sha256 "ec9630ff447b5dc7eaecfe553852836178e236df862b4d907496ea9714b079d4"
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
