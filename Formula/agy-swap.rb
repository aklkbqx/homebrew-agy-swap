class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.13.0/agy-swap_v2.13.0_darwin_arm64"
      sha256 "6e6499ff5bd63dd34ccfa1094a63f518cd8e53d7ea081bd4340de3651a82eee7"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.13.0/agy-swap_v2.13.0_darwin_amd64"
      sha256 "f84b3a57695721187d5d3a9af166b22c251a62ea4f6861c6f3bc515d5482fe59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.13.0/agy-swap_v2.13.0_linux_arm64"
      sha256 "0238f88ccdaf81280c8bdda2ca8232de50662c7c000f8e08b644b6d145770459"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.13.0/agy-swap_v2.13.0_linux_amd64"
      sha256 "c89f46cc8ff9784f5fcc1f4326becad3c6746f378709d8682436605743375bba"
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
