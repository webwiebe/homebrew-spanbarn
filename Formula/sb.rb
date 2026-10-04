class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.337"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.337.tar.gz"
      sha256 "d5e4e10f0eb1ffdfcf77472400cb44087052ac0052e0ac1e217c41d0c4606715"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.337.tar.gz"
      sha256 "aa6c73a9772e6ceba32c96972b734722f864c8ab86ed6a77863c00860b2482da"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
