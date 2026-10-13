class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.11.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.11/agy-swap_v2.11.11_darwin_arm64"
      sha256 "c81f15a5329c0c0f0f00a0a46f0462db9d7663b7b70aeb6e5fea59f720582603"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.11/agy-swap_v2.11.11_darwin_amd64"
      sha256 "884a871a14926d4b9d157a55a201c149897afbe1715d54bf5e4f1e113ad0dde1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.11/agy-swap_v2.11.11_linux_arm64"
      sha256 "4906b1d27a47e8f3c7850f1ca268c47e6bde38758434ee695184c39a997e6c2a"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.11/agy-swap_v2.11.11_linux_amd64"
      sha256 "849dc2c3fd2fe05ca51dbcaf9b681ff6d9e6eda03fcb527bd5b97712d4ffdb3e"
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
