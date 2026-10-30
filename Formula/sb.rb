class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.490"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.490.tar.gz"
      sha256 "bc2b65daa2ab1b041e0e0c69fc479f0b62e3c02dcf079e2f7d29f2ca9dd0f040"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.490.tar.gz"
      sha256 "0d5db20b35b2baab29edabcc29424eb19746a4614a6e121095ab70bba55b9600"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
