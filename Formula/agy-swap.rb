class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.18.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.4/agy-swap_v2.18.4_darwin_arm64"
      sha256 "28fff81c9efbce233237aaeeebcbbc25d5b06330c57f07837279857b925f4d25"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.4/agy-swap_v2.18.4_darwin_amd64"
      sha256 "1f90a043ac0c183987fa86d2ae4fb4e9777783d41fedb7fb43906e6b3579356d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.4/agy-swap_v2.18.4_linux_arm64"
      sha256 "cacf12b7e924aeb7c779ba329f2716ec266d087908b57f2e6e9f9c68979cac51"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.18.4/agy-swap_v2.18.4_linux_amd64"
      sha256 "8838b38327289320f41451fb9ba2fc94122f75d6019314fa59c4cbef50e18443"
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
