class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.326"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.326.tar.gz"
      sha256 "275fb690f265c6ec8049c1d56df0914e5935f9ff7ef9a0c271571d8bb4d4bd42"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.326.tar.gz"
      sha256 "07b6e3ba490af03d6856be140eabda6c338b219c5a8a86d857aa82f91688d38a"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
