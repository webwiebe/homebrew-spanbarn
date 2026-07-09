class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.259"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.259.tar.gz"
      sha256 "8ece3d7e04fc553e4fa8eb974ceb02135171c961ba4072b9873592e6465be4fc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.259.tar.gz"
      sha256 "00d6ab8856357c6f40aecdecf62b700b58f4bdc2781c0972623f44870447e481"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
