class AgySwap < Formula
  desc "Switch Google Antigravity CLI and IDE accounts and monitor model quotas"
  homepage "https://agy-swap.aklkbqx.com"
  version "2.25.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.25.1/agy-swap_v2.25.1_darwin_arm64"
      sha256 "b5e8053660430a0953cd7b958b60b2b56f75417c261bc73190b75b8647e1035b"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.25.1/agy-swap_v2.25.1_darwin_amd64"
      sha256 "d73087849455330590521da73f4d9bb9944caac3f027cd6dc72dce96ebd3fcdf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.25.1/agy-swap_v2.25.1_linux_arm64"
      sha256 "a7d8bd40e819d4d731423c039bd01c27b449d227d614448ce53abbfef7530a0c"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.25.1/agy-swap_v2.25.1_linux_amd64"
      sha256 "0461ee773c684eab13e7a79fd480119fee13803a501c7ec0ef7c9b086d529e34"
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
