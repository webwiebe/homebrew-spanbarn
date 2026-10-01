class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.304"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.304.tar.gz"
      sha256 "e1528ca92c2c67ba92ddeb05f59d33816ce37dbc8429f767fe03e20e60b54d65"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.304.tar.gz"
      sha256 "739b8d77d27ed0a078b1691e87abffeefd030dd69b71add7b554ed22f9a73335"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
