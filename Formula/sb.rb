class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.307"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.307.tar.gz"
      sha256 "8565f21120768a04e71b9f823ec78bec3bdf3d734e0468677113d5828f6825f3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.307.tar.gz"
      sha256 "9833766f36826d9e1ab70e6c2345086f2d68a181ff3e70b0ffab834e1a1b2394"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
