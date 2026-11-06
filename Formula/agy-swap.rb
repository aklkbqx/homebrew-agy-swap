class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.22.0/agy-swap_v2.22.0_darwin_arm64"
      sha256 "734bbd0033d93afd8026f7621cfe45da331009dba933d98c67dc6f5535787f37"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.22.0/agy-swap_v2.22.0_darwin_amd64"
      sha256 "e9a5e8283bac769c4cc0537933c2139056d9e58c4b368eca8f880a3bfe2aa814"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.22.0/agy-swap_v2.22.0_linux_arm64"
      sha256 "6e27cbb0a8dfe9ef14acb5cad3de93548d4bb09c694a1b82aa5b5dedfcd31690"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.22.0/agy-swap_v2.22.0_linux_amd64"
      sha256 "b161040acca1aed9f4ad7dfde9cba00d170dcf25166af8957e7eefba5bb2de62"
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
