class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.17.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.2/agy-swap_v2.17.2_darwin_arm64"
      sha256 "e2ad56b5fc6f3beb949c27a67ab520fe292482521ca44e05f36d923e137260d5"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.2/agy-swap_v2.17.2_darwin_amd64"
      sha256 "eb743ea3ad442507f63b19467704630c783e7a93a9ade5e54bb7f9ce26f0c4d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.2/agy-swap_v2.17.2_linux_arm64"
      sha256 "0c820d197a5a09a1b71ba5be5704c3ebd5e4db85f774310da1fcce8229dc3fe8"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.2/agy-swap_v2.17.2_linux_amd64"
      sha256 "3871d3a3e2cb53350a0fcab861656e41040ea5a9d864a38256e2903870f1b789"
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
