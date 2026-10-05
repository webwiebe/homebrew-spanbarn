class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.348"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.348.tar.gz"
      sha256 "ed3915c4fe319b59f9aa00f5391e588fe1e1172f4fd4843fee91b9101414b2e5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.348.tar.gz"
      sha256 "fc38f7a3db6927496298533d7b3abd68e062ec6190a1a39927a4a196ae9177d8"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
