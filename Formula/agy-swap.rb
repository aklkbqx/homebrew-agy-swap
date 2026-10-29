class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.19.0/agy-swap_v2.19.0_darwin_arm64"
      sha256 "72e64ad502bda06f2d4139061665a874f8eb69343959f2e3397530954e1ca224"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.19.0/agy-swap_v2.19.0_darwin_amd64"
      sha256 "5cf6eda29c2ed89fb2125e38286f6e886fb6b38d894322cf3444c42ece500a38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.19.0/agy-swap_v2.19.0_linux_arm64"
      sha256 "0902b6eebdb60c8f240279e6fadbf8e67d65b36d2b401fb9af5d2066a36b4454"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.19.0/agy-swap_v2.19.0_linux_amd64"
      sha256 "9f2a0a3900e15fcad2dc6178bad63fdad3edf26531720409a20cf22f3fb7a591"
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
