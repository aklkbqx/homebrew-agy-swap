class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.12.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.12.2/agy-swap_v2.12.2_darwin_arm64"
      sha256 "68e44fc1ceeb75daa7074ec739b37e26e75050a2f9adae442d38982e0a22fe76"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.12.2/agy-swap_v2.12.2_darwin_amd64"
      sha256 "51a4f07e78816214bb9c34f491527e0f5c8ca13de011669722d55a337ba81fb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.12.2/agy-swap_v2.12.2_linux_arm64"
      sha256 "85efe07e67ff99dd2a9f276de543f057fc0be5d65f1a0e61c285df6b2a6857e1"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.12.2/agy-swap_v2.12.2_linux_amd64"
      sha256 "4faec53ff8b4cef04112532eafc2cc3961cbb29619b84ed7f30e1c66da145a52"
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
