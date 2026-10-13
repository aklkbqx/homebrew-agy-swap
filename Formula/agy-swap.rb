class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.11.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.9/agy-swap_v2.11.9_darwin_arm64"
      sha256 "4bbd9f8795dbcecf628b34731b5f69768fae1ac2020a3e106f2740ff6df7b1fc"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.9/agy-swap_v2.11.9_darwin_amd64"
      sha256 "764330578b1e41206302c1f71250c33fc4d1b2d656cfa44d30a3b5fc55523d3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.9/agy-swap_v2.11.9_linux_arm64"
      sha256 "b1faace84a0fbbfc1bf6e553c8aa51c483855b164ccc080c07220811f43a32c1"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.9/agy-swap_v2.11.9_linux_amd64"
      sha256 "7d63c3da712a5c01a0c12c6cf85ae907fcdda159a8e76a928c6052387f732e3c"
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
