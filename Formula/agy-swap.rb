class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.11.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.5/agy-swap_v2.11.5_darwin_arm64"
      sha256 "9ad3d4e300a98e9ae59a9b61a1e016f61654b07b8190d6a568517460dafd4616"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.5/agy-swap_v2.11.5_darwin_amd64"
      sha256 "2e148663d4dca6176df496fb2371c8aa9c2c108f0d6ad4941978127a94d65ce0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.5/agy-swap_v2.11.5_linux_arm64"
      sha256 "e840e5cf9902b64613a8de5aac2ab600b95029571de4efc8eeefd0043996f319"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.5/agy-swap_v2.11.5_linux_amd64"
      sha256 "a750df455b597a192a15764b8a22c674250c2e6cdea6a61f1c7ed19d5878d2dd"
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
