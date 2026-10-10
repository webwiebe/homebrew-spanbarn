class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.356"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.356.tar.gz"
      sha256 "540775b3026899d6759da15619f5d16b7e6a23a8fa8a3ecf98531e3a911b4bbc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.356.tar.gz"
      sha256 "e43eb5e1af1568b6be088d2d4344e60dabf682434e4eff007660add91fe95e61"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
