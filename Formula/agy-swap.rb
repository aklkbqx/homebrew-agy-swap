class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.20.0/agy-swap_v2.20.0_darwin_arm64"
      sha256 "834275af7a0ce0faf277591bd299204a52e02e2abd311f7053b748257e0dff8e"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.20.0/agy-swap_v2.20.0_darwin_amd64"
      sha256 "de63c6237fac757b37a7fe164ee427310c02445d41eecf107f5fbab766ba3d73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.20.0/agy-swap_v2.20.0_linux_arm64"
      sha256 "5069f9f94e000c25047427c9443d17bbaacb471f616bb0df1fd24b6c7a1b4c27"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.20.0/agy-swap_v2.20.0_linux_amd64"
      sha256 "f26b00a6d8d18f47ab3bd1a6266303f25039a8c7b7134cfa58a8fb07e2b9155a"
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
