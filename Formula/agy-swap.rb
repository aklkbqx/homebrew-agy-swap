class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.20.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.20.1/agy-swap_v2.20.1_darwin_arm64"
      sha256 "bfa82c65d40e3481a52923eff67838a661388a63377e1723d88217b951c78b43"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.20.1/agy-swap_v2.20.1_darwin_amd64"
      sha256 "4847bffca43d337ef93e9a502ac6c23b8255ae5f3bb6ba4145295acc6b58b583"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.20.1/agy-swap_v2.20.1_linux_arm64"
      sha256 "68b85035adfbc3965358c0848bd677cf32c71af741330526ce09a296bf0b394c"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.20.1/agy-swap_v2.20.1_linux_amd64"
      sha256 "825f42a865903963423cd5d6de852acdacf3764f55a4f500c59911c4f0b8d3f7"
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
