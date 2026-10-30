class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.20.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.20.1/agy-swap_v2.20.1_darwin_arm64"
      sha256 "744fce1c74c2d1940ed91e10abab7627114497c6c996d222629f98207330bdad"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.20.1/agy-swap_v2.20.1_darwin_amd64"
      sha256 "933c678239cc0e9997e26ef90b96ddc48c6c6619aea14add9ea4047c7046f9ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.20.1/agy-swap_v2.20.1_linux_arm64"
      sha256 "6acc170a40fd5e200b700aaa5da54b93fda7dc90717c91e7b23fc37cb9e79368"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.20.1/agy-swap_v2.20.1_linux_amd64"
      sha256 "2b6efe68d72be5adcd09f0c304c41898784ec8249ea52b3a85d8b8bdbd6e56a2"
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
