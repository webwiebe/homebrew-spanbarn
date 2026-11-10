class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.520"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.520.tar.gz"
      sha256 "4ee6a550ac8177f24f2d83fed6d395e56a3a257812f1da77e6b02a6646b9d74b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.520.tar.gz"
      sha256 "541227c1a9d771de2c2d31946ab5b6e9d63eadea3bdcb5c79405be140096043d"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
