class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.21.0/agy-swap_v2.21.0_darwin_arm64"
      sha256 "7bf122a546cac7380b6bd565ce9beb116863525aa0f28da61980b76e5683b872"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.21.0/agy-swap_v2.21.0_darwin_amd64"
      sha256 "038befdf363b78fd7cf2f1f20ef6049e3bd5346901bfd117e671fb63c44e94f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.21.0/agy-swap_v2.21.0_linux_arm64"
      sha256 "e7e2b320ec0cde418cea3809220168c24d87ce650fd805e95afd5fd25a671ae4"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.21.0/agy-swap_v2.21.0_linux_amd64"
      sha256 "99ece2b00adccca43527a4ba63fe33891a47f2509cdc28c04fbf24d0cdd6698b"
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
