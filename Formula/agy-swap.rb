class AgySwap < Formula
  desc "Switch Google Antigravity CLI and IDE accounts and monitor model quotas"
  homepage "https://agy-swap.aklkbqx.com"
  version "2.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.26.0/agy-swap_v2.26.0_darwin_arm64"
      sha256 "e0ed6ef24ab6c5a2ae1c0642ac182354c74040b529e11a83b746661c7195f25f"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.26.0/agy-swap_v2.26.0_darwin_amd64"
      sha256 "d4038c330faa598b532c145842a30cead78f53ec25aa01ccfe5923dbf15277dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.26.0/agy-swap_v2.26.0_linux_arm64"
      sha256 "a622b2ea96c1e3fbeb60d4feebbe31b6086b41b858462e412389f4b46b876dac"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.26.0/agy-swap_v2.26.0_linux_amd64"
      sha256 "45a1eb9d9fdd7748c28edae0aaf199be9811f9637a827a227543d494830cab3a"
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
