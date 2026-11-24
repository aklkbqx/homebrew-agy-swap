class AgySwap < Formula
  desc "Switch Google Antigravity CLI and IDE accounts and monitor model quotas"
  homepage "https://agy-swap.aklkbqx.com"
  version "2.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.25.0/agy-swap_v2.25.0_darwin_arm64"
      sha256 "633c514fbb0314c664c3a9afb19092d0a7b81a5b52943924d3ab2fb252388c33"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.25.0/agy-swap_v2.25.0_darwin_amd64"
      sha256 "7a419ab6051a96166f0535b512500a8459f00c05dcbe05f5d8c5279278f2f949"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.25.0/agy-swap_v2.25.0_linux_arm64"
      sha256 "569ec9a4babf3657612282dc35c8ab36dce29998bf9453eb736edec0536875d7"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.25.0/agy-swap_v2.25.0_linux_amd64"
      sha256 "f5acc64786c7b179cd71f0ca16c97c43a054e4abf46f7af36dd7304563a0e66c"
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
