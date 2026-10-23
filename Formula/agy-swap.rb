class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.0/agy-swap_v2.17.0_darwin_arm64"
      sha256 "a9aec6e3c1e6dcb1fe1af3c70ca974acb5219024ac67a6d18c79ba13101d89c5"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.0/agy-swap_v2.17.0_darwin_amd64"
      sha256 "c4820ed58519b4c37ca9e1146cef8c184e8cbe1dd5546422941dc291c1a481d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.0/agy-swap_v2.17.0_linux_arm64"
      sha256 "39ff95042d9e32c225029849db9d5e4b38079b1f2b4e054ab5e60bdb5f0d375a"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.0/agy-swap_v2.17.0_linux_amd64"
      sha256 "3f27a07316f020e272d168ccbfbe765c34d6b7ad944a983dffbfb251b0ee6952"
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
