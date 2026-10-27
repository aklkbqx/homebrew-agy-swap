class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.18.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.1/agy-swap_v2.18.1_darwin_arm64"
      sha256 "b69707baab1404ebd51d30203a3ea4c706638f4f1a7e05063e6b97faffcb1a73"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.1/agy-swap_v2.18.1_darwin_amd64"
      sha256 "6b5fa3dc5adf4a466c6031ad006c49a213bf85bb1b30914f740df84e41fa2a6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.1/agy-swap_v2.18.1_linux_arm64"
      sha256 "f8b15ae67034f793dac874b3fa532ad2e93846f1b669609960f636ecd2d5c665"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.1/agy-swap_v2.18.1_linux_amd64"
      sha256 "bedd51f532769ecc9edba1c0a3aa6b99a3283557c95c9223ac8bbe2195e21c3a"
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
