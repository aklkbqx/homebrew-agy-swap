class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.11.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.4/agy-swap_v2.11.4_darwin_arm64"
      sha256 "e3095b247c4730b7ebbfd349039b855511acca4401e1ecd3e28f1f72ccf06bb8"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.4/agy-swap_v2.11.4_darwin_amd64"
      sha256 "2e92b2137456f6661972169c0e6365beefb075194db2a38c18010589336b0516"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.4/agy-swap_v2.11.4_linux_arm64"
      sha256 "90ce54e0dabce7ecd0f01a469bb0e03a225f0af8543f4e854cdfa3e7a37fdc8d"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.4/agy-swap_v2.11.4_linux_amd64"
      sha256 "d35be02fdb50ae49985fa42e714e7cf4ea01288760b40b1c5ba0ad064a81758b"
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
