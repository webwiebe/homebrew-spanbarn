class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.318"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.318.tar.gz"
      sha256 "6d2038ac48431eb61fee649ce82cb6be7d1634c435c1416e2013f94b35632931"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.318.tar.gz"
      sha256 "522b136922a232989284ecb891f69f6bb57a6facccabf1e66c0b2332831e7ff6"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
