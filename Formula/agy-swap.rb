class AgySwap < Formula
  desc "Switch Google Antigravity CLI and IDE accounts and monitor model quotas"
  homepage "https://agy-swap.aklkbqx.com"
  version "2.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.24.0/agy-swap_v2.24.0_darwin_arm64"
      sha256 "24be5467004d18f701ccb8634623633049b21eb7bb4c2ee6e983275c7fd491f2"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.24.0/agy-swap_v2.24.0_darwin_amd64"
      sha256 "09228cb9f1504aacdb4c49261d05d1730641d47487d6a35595f7a76624073c9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.24.0/agy-swap_v2.24.0_linux_arm64"
      sha256 "b4a50e098946c7c005607ddc73fa0e36df9850c1f83c1e58ac6f885cdcce73e9"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.24.0/agy-swap_v2.24.0_linux_amd64"
      sha256 "9d7da77faf2c23f264f5e822ed5880d49c511a4a8883afe1a26234690e392f33"
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
