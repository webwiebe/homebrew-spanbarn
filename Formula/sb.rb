class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.247"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.247.tar.gz"
      sha256 "8557321d2269428c2d7bfdff7ba14ed6eca247065a88417d843efb7c0bc4a2d2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.247.tar.gz"
      sha256 "a303e5868a4bc052f92f6970ddb077298105559c80778e4f1507c51afd0bbf33"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
