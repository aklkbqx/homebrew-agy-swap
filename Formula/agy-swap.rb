class AgySwap < Formula
  desc "Switch Google Antigravity CLI and IDE accounts and monitor model quotas"
  homepage "https://agy-swap.aklkbqx.com"
  version "2.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.27.0/agy-swap_v2.27.0_darwin_arm64"
      sha256 "64d5d23ccac931bd263c59b30bb229f74bad0703cfaf7a9631499c57f150b298"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.27.0/agy-swap_v2.27.0_darwin_amd64"
      sha256 "64abdb38832344d0792718342abf9f6716457e28606788d31b147220094766b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.27.0/agy-swap_v2.27.0_linux_arm64"
      sha256 "2d1d4d9c5f4138acfa4b984d4b38e402b930706bac5e29ee39fe1c391ab297d9"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.27.0/agy-swap_v2.27.0_linux_amd64"
      sha256 "0431fd57a19d24f81199c37722f6be783a3fc1e6affa7fc6d1e13ad9228a9d9e"
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
