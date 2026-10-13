class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.11.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.8/agy-swap_v2.11.8_darwin_arm64"
      sha256 "7ccbb7838f965e7d9c1102119e03af6b15a9455341b82716a15bc7141d61195c"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.8/agy-swap_v2.11.8_darwin_amd64"
      sha256 "deb29a82fe87a93c56dca8bfc3ab285d7fb1ef77be0fa0f992226bacb9a9a49e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.8/agy-swap_v2.11.8_linux_arm64"
      sha256 "3fb49bbd163dfab1db7db298f1f42f5abebc9de2c222b0b71617860541b00d3b"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.8/agy-swap_v2.11.8_linux_amd64"
      sha256 "29d7338acbdb0608484a23fd1a903000dbf2906eee208cc8641baef79cb1b9ee"
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
