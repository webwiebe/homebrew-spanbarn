class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.243"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.243.tar.gz"
      sha256 "8641d17a55067aad260859000c1977e0447eb0cfea6569748f625e2faaa17520"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.243.tar.gz"
      sha256 "b9d3145e32597b141ef1eabd6d65ae0a82f136da9e7e0bc13d021d9300746580"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
