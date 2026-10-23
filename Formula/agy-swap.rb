class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.14.0/agy-swap_v2.14.0_darwin_arm64"
      sha256 "02e415cf9a9303ee7e7c8960b71bb5829988e3e418c92280617edda8d474f66c"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.14.0/agy-swap_v2.14.0_darwin_amd64"
      sha256 "6985207d1e3c02d347a9c99fbeb3c4b64d0369a4f86b8e32388a5752b80e50ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.14.0/agy-swap_v2.14.0_linux_arm64"
      sha256 "5c696fa508950f5ddae3b9fcef9c4ee7d316d026684ed529cb8e4f311275f470"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.14.0/agy-swap_v2.14.0_linux_amd64"
      sha256 "2d9917480b27cff9f404400b7c9c59ee073f859f80aa208633245c4a4a32eff5"
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
