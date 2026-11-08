class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.519"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.519.tar.gz"
      sha256 "69cc054033534415d2ddb600a95ac42537e2d8dd6aafde2632627f1d6d2c85bb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.519.tar.gz"
      sha256 "54ecbf09e7f76e0df97da68f64d57c57f88bd4b92a0a8e02a77fcb52a518112b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
