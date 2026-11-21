class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.568"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.568.tar.gz"
      sha256 "9ab9eb71ae4604ee8000331f33320c003db93c6ec900ac5a221436ed0413fd02"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.568.tar.gz"
      sha256 "92ab1d322fe26aaef68c2ffb51975ee053c7675c7363811d41195f2b9ad04a8b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
