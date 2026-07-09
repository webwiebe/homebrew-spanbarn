class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.252"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.252.tar.gz"
      sha256 "436dfe0271255e100bfd7e7126620c431b8ae99a0f87e5ea1a2ccb478ddcfe56"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.252.tar.gz"
      sha256 "63295dfcd3b980a27df95777e7e751b5f2acfe9b2d66d718734ac920c9119199"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
