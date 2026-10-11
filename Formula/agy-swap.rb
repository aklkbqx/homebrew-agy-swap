class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.2/agy-swap_v2.11.2_darwin_arm64"
      sha256 "93d06bd2854fd4752672d813151122a3f405699acdb226b1cddb80d0d71f6da8"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.2/agy-swap_v2.11.2_darwin_amd64"
      sha256 "09d95ea45fcc83a560afbc67e4e3d48657df09fe9b3c8658b2bc3c21dce9e246"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.2/agy-swap_v2.11.2_linux_arm64"
      sha256 "28a7e84bcea7d294e4fb327322805c8aadd715a303c204b9cad2c809422439bd"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.2/agy-swap_v2.11.2_linux_amd64"
      sha256 "98e528005f65e97df92d4918f10e6fe7258345b73bdd257402dfeabc728817b8"
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
