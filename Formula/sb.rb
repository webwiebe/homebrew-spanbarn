class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.491"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.491.tar.gz"
      sha256 "9ffb3d7d9790ffc82ec6585ddf79660d379d862e0ab7061673577b10d3e022dc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.491.tar.gz"
      sha256 "b85fb4daa92f02e45fe56e20396ae04a820b45f566ec5832ab8fa8d16a48e756"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
