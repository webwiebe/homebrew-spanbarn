class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.559"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.559.tar.gz"
      sha256 "f01f08b639c323cb8d49c94ab0ee21f6c3633064f677913ed1b139f2698df679"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.559.tar.gz"
      sha256 "2accfe2fc6c63f40afe6c8a2a799703372c672a577aef84d63411c3b331ad5b1"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
