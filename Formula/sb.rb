class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.321"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.321.tar.gz"
      sha256 "d43a88a8cb415ac619312d91173f9dcc1327e44c94d2aa5db6c192db1dfdf61b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.321.tar.gz"
      sha256 "18c642f21182b2a7daa66a22ac2a924d19dbc80f97f31734689a8c2093e168bd"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
