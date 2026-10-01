class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.315"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.315.tar.gz"
      sha256 "f24c90d59ae9121a57f558a501d1a55c5812e60fb56711c219779d3a2fc86c9a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.315.tar.gz"
      sha256 "19ce7af1c9c76c8180c8a70b65b4c54bdcfb30ba64f4d800d070de23f8f2cbff"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
