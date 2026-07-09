class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.256"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.256.tar.gz"
      sha256 "164c73cdba9c64be5dd46673647b405f68b7d576b80e6387a57c4a6a073d3199"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.256.tar.gz"
      sha256 "f62f6c0c575792e8fa96d9cade8df82461d83f97f9392c74363ca28d01dd3e1c"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
