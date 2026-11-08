class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.23.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.2/agy-swap_v2.23.2_darwin_arm64"
      sha256 "2c44ceb5dcc9995fbd4a0f968e22c21e62df5f6e44e0c15d6af7e5803add098e"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.2/agy-swap_v2.23.2_darwin_amd64"
      sha256 "0e0e94cfbffd9342e93eac38e10734859e9fc8f821a3b16298cba88feca24fb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.2/agy-swap_v2.23.2_linux_arm64"
      sha256 "b5f779fbd3c770b6505e5d12eea1be0b4d861dbeb9235ed4aa1f1ad502d592d3"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.2/agy-swap_v2.23.2_linux_amd64"
      sha256 "846b8fe3b93bc1c8d1f1fdbeb8456000047708e3776418b1521caa8b09499542"
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
