class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.275"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.275.tar.gz"
      sha256 "8b5ee8eac472d23f1e7edbb8791acdc2f98cc901034f5b1169c5335a418521a4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.275.tar.gz"
      sha256 "9283c6fd8921c3c44bbc095a889a88c416e9f8469b8c3d4d22b5a4125bba87c1"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
