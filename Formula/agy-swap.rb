class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.18.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.2/agy-swap_v2.18.2_darwin_arm64"
      sha256 "a770dfa6d9ff39519efcf049aa7f1c490503daf77cabf531b953f65b61f6f28a"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.2/agy-swap_v2.18.2_darwin_amd64"
      sha256 "74a6f4b0514eec7e0e8249cc4dc999b2828555bbd231bf26bd15ba9dc0947c5c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.2/agy-swap_v2.18.2_linux_arm64"
      sha256 "2bef7355c11de7f20a704e7e9ae80a73022359f84f03c385e1bdb910e5c22e8f"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.2/agy-swap_v2.18.2_linux_amd64"
      sha256 "44d234b8f0b2a33325b059f19c07dd053d4bcbb9a6b4aa1a948446e2b89c9dfe"
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
