class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.0/agy-swap_v2.11.0_darwin_arm64"
      sha256 "1b551b55f5ea7707bf87ba3265639a482873c796d5837442e3433f7d5fd365dc"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.0/agy-swap_v2.11.0_darwin_amd64"
      sha256 "aae02642aa85c2ee183d8505a20bd0c43cf954235b95f9aed55d1bf01f1ec460"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.0/agy-swap_v2.11.0_linux_arm64"
      sha256 "c53fed7d894f189401936637d66ada6677e88048a3ee8526bf3b98248429b85e"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.0/agy-swap_v2.11.0_linux_amd64"
      sha256 "bbc895dd335c40f97ed6859b7259b188304947f89d305a345974cfb17941d7e8"
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
