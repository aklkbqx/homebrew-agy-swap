class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.1/agy-swap_v2.11.1_darwin_arm64"
      sha256 "45e95cc8e3939f4cdcd833b6c1fc8cdebfe1d2d1a84a61ba83298c3b7e77330d"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.1/agy-swap_v2.11.1_darwin_amd64"
      sha256 "3eac3e45e08c7c838682f5d29ce98e9f3b8299c15aa8514af650e476007e757e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.1/agy-swap_v2.11.1_linux_arm64"
      sha256 "b618a8036fd6f84dada7b8a742c8c26b146d4d1043be3b06be56652bb4509924"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.1/agy-swap_v2.11.1_linux_amd64"
      sha256 "39ba6ac543155afe9bf03ce5ca4586f1fcf08efaacc34b66f4727093da4baafb"
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
