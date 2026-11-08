class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.23.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.1/agy-swap_v2.23.1_darwin_arm64"
      sha256 "1236aac16ec1c4d106982aa35e4ce5f05ac447f882abfa7d5523038115e9a598"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.1/agy-swap_v2.23.1_darwin_amd64"
      sha256 "996e2e73c80cde418d95ab1870e4441df82a80fa471a60ee006f29a489bdb7c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.1/agy-swap_v2.23.1_linux_arm64"
      sha256 "5739837fda0ea8ad5a94dd632420637952c7acf84040f801dc5aedbdc217e031"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.1/agy-swap_v2.23.1_linux_amd64"
      sha256 "0f459127fa3e126a746e63b783c972dbd5caf89ac53baf4d2fdf18b034a945f7"
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
