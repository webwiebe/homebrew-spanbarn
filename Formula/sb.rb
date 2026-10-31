class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.495"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.495.tar.gz"
      sha256 "ef78a7b086565ee244ae4028c78d0bff7473f63546571ec7f36358dc56b26d3c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.495.tar.gz"
      sha256 "cabb535b20715a1500957b1e382ebfe49c4c2ba3a18885134ce174c250c352ee"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
