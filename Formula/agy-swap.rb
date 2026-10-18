class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.13.1/agy-swap_v2.13.1_darwin_arm64"
      sha256 "4d371ba27683abd01c0a25554fca61d8010735656d8966bb34000eae69fcaf56"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.13.1/agy-swap_v2.13.1_darwin_amd64"
      sha256 "c08317e8b9e65953e8e34eb48152369051d3e396681ef04a470ad1e02e1132d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.13.1/agy-swap_v2.13.1_linux_arm64"
      sha256 "32f4088f1f841e1a28a942c924f1f2112a187b182187504cbc9f104c15e88718"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.13.1/agy-swap_v2.13.1_linux_amd64"
      sha256 "0e19ff7b3ab7cf261963880224231b78d318468e6aed5be9fbd6f47fe884ca5c"
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
