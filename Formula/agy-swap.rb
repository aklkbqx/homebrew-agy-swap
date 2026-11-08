class AgySwap < Formula
  desc "Fast account switcher and quota monitor for Google Antigravity CLI"
  homepage "https://github.com/aklkbqx/agy-swap"
  version "2.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.0/agy-swap_v2.23.0_darwin_arm64"
      sha256 "0ccc3b1451036eeeb34ed312723a9c8098bc39b30e96c17730bcc334647f718d"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.0/agy-swap_v2.23.0_darwin_amd64"
      sha256 "33e1ed252b62d3a02b384e145a251a840c4f8216f6a4cb93f5efd5c49c023952"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.0/agy-swap_v2.23.0_linux_arm64"
      sha256 "8f33de9e83e1c6dc9d65d213669acbf61fc385249c3d5d685e115ca011f33330"
    else
      url "https://github.com/aklkbqx/agy-swap/releases/download/v2.23.0/agy-swap_v2.23.0_linux_amd64"
      sha256 "559eb1f5b48baefcfb2ef85e2f625ef7e3d49e74fcb1d40c485af50e24f85634"
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
