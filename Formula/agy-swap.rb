class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.22.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.22.1/agy-swap_v2.22.1_darwin_arm64"
      sha256 "73cc7b7d6c9dfbc30960a2bad04a62911fda672cbcdfbd70b4d950b2e3aa7234"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.22.1/agy-swap_v2.22.1_darwin_amd64"
      sha256 "44ae1bcffb8a4730ef613af1c2552ab55c4a65dadad00fb190989c65ca20696f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.22.1/agy-swap_v2.22.1_linux_arm64"
      sha256 "d865af1af2ff5b1cd77722e004c33563c561f34c806e0e30ea943cd427856008"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.22.1/agy-swap_v2.22.1_linux_amd64"
      sha256 "957ee0bb08a4c075b59939b747bbf6d5ec2b12637934ac14ef7edb8b7853e07a"
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
