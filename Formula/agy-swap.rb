class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.23.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.5/agy-swap_v2.23.5_darwin_arm64"
      sha256 "71f1a67a384ec532672c37570b9b1cac37372271f656329b07c9241937a0591e"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.5/agy-swap_v2.23.5_darwin_amd64"
      sha256 "0913ff0a07cac6a55081f020d48748629a3bc1d89aa4d92ffb3adde98bd0a0e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.5/agy-swap_v2.23.5_linux_arm64"
      sha256 "188e9e0b27ff2391e25a885f730ea1386772ac237c43641c4bb3ec2a1cfee7e3"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.5/agy-swap_v2.23.5_linux_amd64"
      sha256 "6b89e354a899f7f26df5a17dad924e87280de161d44b8fe78722471e791b31d3"
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
