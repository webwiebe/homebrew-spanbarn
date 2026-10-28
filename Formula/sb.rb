class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.450"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.450.tar.gz"
      sha256 "f702a1b466cb7d1a17c5cc2f55bcb589d8ec7ba268665691e2b5a538d0a91f0a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.450.tar.gz"
      sha256 "a455375aa3d3e443ffe42d36d5b962a743ce408f706004777c8f775482c144ca"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
