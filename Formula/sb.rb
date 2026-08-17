class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.295"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.295.tar.gz"
      sha256 "696323f83c0370882b62611a4dd1e04f784208b4ce8e4f18968283a3bc16dd10"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.295.tar.gz"
      sha256 "cfbc8ca4c292a9be228ed6b9117d4cdfd461cc78136472c884a1137bd2b9f36e"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
