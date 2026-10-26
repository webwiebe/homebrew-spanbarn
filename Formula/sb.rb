class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.431"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.431.tar.gz"
      sha256 "95d5df08de13bc542ba581d7436f08878db43c4c0c2631e7625dbf1b40cec3db"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.431.tar.gz"
      sha256 "9df3327b9a39a1c599e963c4aa2a4d70fca860b1cca237d568074d69155e7100"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
