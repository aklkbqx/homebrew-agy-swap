class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.12.1/agy-swap_v2.12.1_darwin_arm64"
      sha256 "fb97d42fb566f9fc63ce85589bb2e52f732276bfc66850af1911c9ff6054bf1a"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.12.1/agy-swap_v2.12.1_darwin_amd64"
      sha256 "562dcbfa7a536d13333fbb90498f669d84e8497e898f293adf3476893754695d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.12.1/agy-swap_v2.12.1_linux_arm64"
      sha256 "e0554540634226aec06c4f4269b2ad0551fbfe836b3733d47b5c5a51d4887833"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.12.1/agy-swap_v2.12.1_linux_amd64"
      sha256 "80c4ab0eb44351efd4b5488f86d6f45ff55b728903a1c762bf347609429c0474"
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
