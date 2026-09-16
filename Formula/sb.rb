class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.297"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.297.tar.gz"
      sha256 "7ae008f34f8dd97324479aaec4fda36e346dcf86a5bf59cc2676d304c5fd3c1d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.297.tar.gz"
      sha256 "95c9916b2370e38a3198aa2b9ea620cbf2669a93f63a44d850e1f0d7c56083c3"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
