class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.12.0/agy-swap_v2.12.0_darwin_arm64"
      sha256 "c3373fa3c39c0bd8850a42fa55e6a2c07408c2cf3e9bb442b6de96a14f4ac116"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.12.0/agy-swap_v2.12.0_darwin_amd64"
      sha256 "f7ea65d254718536953e7852acc42ad6fe505abbd20ba79d4766144287b0dc2d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.12.0/agy-swap_v2.12.0_linux_arm64"
      sha256 "7d0cccfc5e951c317e7ab0b8f7fd2dbbe1dae36853c8414bc531e69a4bca70c6"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.12.0/agy-swap_v2.12.0_linux_amd64"
      sha256 "896b2bc163172d0c1da9f9506c56ca949b672dee8f7240d275e3cb058547986d"
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
