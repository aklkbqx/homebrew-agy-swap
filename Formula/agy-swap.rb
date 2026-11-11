class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.23.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.3/agy-swap_v2.23.3_darwin_arm64"
      sha256 "15b5cef93bfba6016d5a9c72606c7a316a7fce8cc3eb9a06fc50fc19948eea4d"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.3/agy-swap_v2.23.3_darwin_amd64"
      sha256 "cc83def3770a021ce917024dc9776e11268bcba55437f00c813d38b4639729d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.3/agy-swap_v2.23.3_linux_arm64"
      sha256 "8ef2e0a49237d2bf3cfa92d2b835bf5d375e703ea314a6e44eb7c3a7dd226b55"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.3/agy-swap_v2.23.3_linux_amd64"
      sha256 "969bc00fe1ad40d05cfbf3405c7062769c6e4ccb76acbb4c30fe58933161afe6"
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
