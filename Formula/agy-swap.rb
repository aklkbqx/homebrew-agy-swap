class AgySwap < Formula
  desc "Switch Google Antigravity CLI and IDE accounts and monitor model quotas"
  homepage "https://agy-swap.aklkbqx.com"
  version "2.23.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.7/agy-swap_v2.23.7_darwin_arm64"
      sha256 "2d53930af1d2143cdfba22d2ad8bd68d31ecf96dd5a19b2fab1ac3588c54114f"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.7/agy-swap_v2.23.7_darwin_amd64"
      sha256 "b748c4cc7931c65478b29f42d3a3b8bbcc03ae2793da3120ab1d2515f5179684"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.7/agy-swap_v2.23.7_linux_arm64"
      sha256 "c9f9e1a611a51a661c20c19dba46513cbd708f4d548a024477b569ef1ac01ade"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.7/agy-swap_v2.23.7_linux_amd64"
      sha256 "5853d3192ed9df13b64e2bc5a21167dc27275b236ccf0637e5cbef2f56fe717b"
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
