class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.510"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.510.tar.gz"
      sha256 "afc04ab8c313653200c42ccf164c5b3406ead2f32a94cb9363e24a795d57fdda"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.510.tar.gz"
      sha256 "d1196b843cdf4b67e4dfb43f626aba8aa3ae0bd99e092ddb9ad718bd94f5a02c"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
