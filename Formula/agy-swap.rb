class AgySwap < Formula
  desc "Switch Google Antigravity CLI and IDE accounts and monitor model quotas"
  homepage "https://agy-swap.aklkbqx.com"
  version "2.23.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.6/agy-swap_v2.23.6_darwin_arm64"
      sha256 "c6f36d06b7014d07ed660c409bbb643e49e6fea2ef481e2a980794d6bc9559a1"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.6/agy-swap_v2.23.6_darwin_amd64"
      sha256 "4b915b3d1d6a6149c717f5ead17da1e8872cccfb53b748a3a4a2a060d09929a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.6/agy-swap_v2.23.6_linux_arm64"
      sha256 "3dc49bf8382c9d0191a9382a928edcc0971b8993b2926e7e71bca4368db5186f"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.6/agy-swap_v2.23.6_linux_amd64"
      sha256 "5fa63f4019d9416bb0fe2533eadea77a3d4691716c51237b20b3d0d653f93b76"
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
