class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.15.0/agy-swap_v2.15.0_darwin_arm64"
      sha256 "670de8d15b41a11f42767256642b4fb260adda5dcb53a09b6b12a950a0b740af"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.15.0/agy-swap_v2.15.0_darwin_amd64"
      sha256 "50ce59b26cc8675f2f4aa95e77e93652a8fa627a445ef081905ba365a436a7df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.15.0/agy-swap_v2.15.0_linux_arm64"
      sha256 "cf1fab30592f6570823aa84de4919999b81e8bb6a51d1f7ef1f533980f0a90c0"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.15.0/agy-swap_v2.15.0_linux_amd64"
      sha256 "cf3bc538edc3cd88dedb078ec3121cd9be9162d26b94e01744b2d4794ef5dc6a"
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
