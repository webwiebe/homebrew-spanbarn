class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.470"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.470.tar.gz"
      sha256 "0ba8066fbfee9c25573f6aa0ee0b1444273ae5380ee6009feca5a7e4a6879538"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.470.tar.gz"
      sha256 "987a84cb1212cfae11a07c32aef9fc08ef315a120da61a8477b384123cb2783b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
