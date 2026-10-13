class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.11.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.7/agy-swap_v2.11.7_darwin_arm64"
      sha256 "e65fd885c7a802635c36aff848996d1f8dde3aebeb0cf89a2674032e46c42e6b"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.7/agy-swap_v2.11.7_darwin_amd64"
      sha256 "7715c978a6a5064ed07a2defc0f35e6979f3c9ebe6108467a08055ff76b57ab1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.7/agy-swap_v2.11.7_linux_arm64"
      sha256 "4c84b789fe79bd088a4a8037891f9eeb6869d4737188b1f7e593d9f5e1271875"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.11.7/agy-swap_v2.11.7_linux_amd64"
      sha256 "08a1476771bf7dbfed1afcd3aa87831e02e51d41567e42ee1475516fdd654c2b"
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
