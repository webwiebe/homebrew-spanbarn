class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.567"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.567.tar.gz"
      sha256 "1d351351aa27a2408538e6d1132842faf7284ccc8be9578a7f17de62b79625a3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.567.tar.gz"
      sha256 "391aa5424169b66a045766e03130e8fef04d9b90f1a548f21f80d5cffd7a7214"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
