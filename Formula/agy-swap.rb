class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.17.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.2/agy-swap_v2.17.2_darwin_arm64"
      sha256 "4ec51d0cef6a88905fcc9ff647d57db0a32e0e59b510646d6c22f071cb839c4d"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.2/agy-swap_v2.17.2_darwin_amd64"
      sha256 "ed10b0829ab3088de04894716674f754134a5171f7da5651587b1b9cf8bddd18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.2/agy-swap_v2.17.2_linux_arm64"
      sha256 "f8e6e22b8f3f4b0062ff3e4f4e3a1ac167deab60b2a691d2d0d3cc8f346aea4e"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.2/agy-swap_v2.17.2_linux_amd64"
      sha256 "0aaa238a464babf30da9cef3a9590b4d4030a7a7d99e31a76754950432ff571e"
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
