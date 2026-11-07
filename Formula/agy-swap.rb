class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.22.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.22.2/agy-swap_v2.22.2_darwin_arm64"
      sha256 "72c4da00a27e4aac0c205ca990329ce05e9ba9e58f51733292bd60986c5a3bec"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.22.2/agy-swap_v2.22.2_darwin_amd64"
      sha256 "a63a8d947c985fa9e5e5a75c78c30541516784ac9b803d8bcb4e649daab80af3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.22.2/agy-swap_v2.22.2_linux_arm64"
      sha256 "8402b5372f3de3aadb8a8ca20848d010b20c6c0ddbac35e3279c41e0e43becf9"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.22.2/agy-swap_v2.22.2_linux_amd64"
      sha256 "2766888df74bed3f4c0f98648aa9e3543b39897f622939443b23dda6996244ef"
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
