class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.479"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.479.tar.gz"
      sha256 "5dee696e4326384b579865f7a959ac05ac560a6aef38164fd77b317c21a9e654"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.479.tar.gz"
      sha256 "cdfd2483f15da8644b1c6b47b9696aa8c703a9c460c0e520a1604cec48450da6"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
