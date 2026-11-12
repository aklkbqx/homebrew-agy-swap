class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.23.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.4/agy-swap_v2.23.4_darwin_arm64"
      sha256 "48467ad3e052f4d893ca3ab90eca19aab72b4cd985925d75b25ec88e66bac8f7"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.4/agy-swap_v2.23.4_darwin_amd64"
      sha256 "8db89dbd0e0484cc20b5963f7b9fb889eb065b6c99be32693c8c68bbc2232833"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.4/agy-swap_v2.23.4_linux_arm64"
      sha256 "45c24bc01ee4ec6a8209b60387d65a2226f302f0ec559cf4e54d2dbc43010e3e"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.4/agy-swap_v2.23.4_linux_amd64"
      sha256 "18c407086803d92c91f617cf2b90e3346b845ccde5d816e5bebeb508cb611735"
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
