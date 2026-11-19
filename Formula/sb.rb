class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.562"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.562.tar.gz"
      sha256 "705cf079fccba4904131f0edf5f085bb3a2fb3531b1eaf52e3a214b40d427af7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.562.tar.gz"
      sha256 "f8d81a7622649b7c15841ce997c994a003d6977065e6de444f2e458c444513eb"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
