class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.429"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.429.tar.gz"
      sha256 "64506caaa5d4ef088691658dd72336b76f01a661a6241a273a4cb4a02284bdbc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.429.tar.gz"
      sha256 "617b889290a2732330e2ba3113764eaf020fe19670f3f855fc883be635cb6b40"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
