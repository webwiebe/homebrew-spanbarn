class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.282"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.282.tar.gz"
      sha256 "86c39d30ca061248578d7c5fc0050cd5a665ee521e8cd4da365502e6e248dba6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.282.tar.gz"
      sha256 "628465e5e34db8dd50ed904f6c791a36557b649b2da4f2623899dbd65340dbc5"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
