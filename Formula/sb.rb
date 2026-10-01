class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.308"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.308.tar.gz"
      sha256 "7e08188ec61acc6b87090bc8ce179f1a3600f3901e918d69c8cc43f7e1d4adc1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.308.tar.gz"
      sha256 "1e893dead91e1e1cdd73d745125a7132b5824d0196f9a436f45ffb8aed42edee"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
