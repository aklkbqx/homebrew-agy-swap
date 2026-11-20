class AgySwap < Formula
  desc "Switch Google Antigravity CLI and IDE accounts and monitor model quotas"
  homepage "https://agy-swap.aklkbqx.com"
  version "2.23.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.8/agy-swap_v2.23.8_darwin_arm64"
      sha256 "bab284f77f6f84352daa3ef28307d405bdcfe3c6e6436513c7d165ef4cecc842"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.8/agy-swap_v2.23.8_darwin_amd64"
      sha256 "42276605353066f7f9ebf6e2f0c34c16fcf3eb33d695b8cc346fca0e238fea66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.8/agy-swap_v2.23.8_linux_arm64"
      sha256 "2ede8725cc42812b2ed2e22cc63f2b088d07b28f910ca74f1ea8425bcc7a2ef9"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.8/agy-swap_v2.23.8_linux_amd64"
      sha256 "613e53b5274a5a8b71a467eb5e7bb9dfd90f0af53456d2fc0305615fcfaa95dd"
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
