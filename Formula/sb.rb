class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.443"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.443.tar.gz"
      sha256 "6c3c4acc87a5f2702d0a03f7114e3bbb117ff9349517fc880aae0a80c23d83af"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.443.tar.gz"
      sha256 "be13a10f8ca7552fbe12e2dc2602f1e2a955c44aa21de177190f795ae13b0090"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
