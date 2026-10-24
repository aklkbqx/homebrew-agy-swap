class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.17.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.1/agy-swap_v2.17.1_darwin_arm64"
      sha256 "d0eea8195e35ca13f44a883d0480782ef0744b80d6b8243b763801a60f95abf5"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.1/agy-swap_v2.17.1_darwin_amd64"
      sha256 "504cf069f77cc81bf00bad3b3ba08e388c9f462b931c31ed0c4f286ee0792e12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.1/agy-swap_v2.17.1_linux_arm64"
      sha256 "9cd47065154f2820f314986ecb020a8043be47ec2689cd33f534d26620eec4ad"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.17.1/agy-swap_v2.17.1_linux_amd64"
      sha256 "9136d037ceb60376bf0fb93722febdfe3b100bc187e563796b8e3da4eb78e2c1"
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
