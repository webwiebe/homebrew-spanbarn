class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.232"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.232.tar.gz"
      sha256 "480c6cd7ea29f18b60de2622648e0db148feb9ddb4476816d2035f9ae15eeb6c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.232.tar.gz"
      sha256 "501f8f3cc100dcfd6bb665dbe9b4f9bc03fb0d03c7138fb188c8f732ad2f56a4"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
