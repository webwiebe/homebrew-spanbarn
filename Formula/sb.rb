class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.336"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.336.tar.gz"
      sha256 "bc2f2874a65f98f033b533c495483a1611a41df23d035b98b34158ef68408c41"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.336.tar.gz"
      sha256 "081c21be3962464d0b89d307d2e6f7a1b818257f63e7260e5246e287a9b2d531"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
