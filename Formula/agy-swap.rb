class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.17.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.2/agy-swap_v2.17.2_darwin_arm64"
      sha256 "8fb7c63c46588197468f1dc5dc216ec4c4022917f53bdb110983a72a3c86ce1f"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.2/agy-swap_v2.17.2_darwin_amd64"
      sha256 "7092763c6c56c7da2a76530b7783a00e1a10b58b2176268ac1ac7fbb9b9bda43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.2/agy-swap_v2.17.2_linux_arm64"
      sha256 "f52f867d42418c4b9f0ccf5b1dff8a0230293428412a503918aa3c0c75e98c1f"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.2/agy-swap_v2.17.2_linux_amd64"
      sha256 "3a9f5b7c6ee475339cddf43cd93bceee33f6061c8113d6aebb8c0de21475bbbe"
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
