class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.364"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.364.tar.gz"
      sha256 "722241e5400ad99855b0e6c298d0ed603805f899b3081ef42ccdae7e9fa12e57"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.364.tar.gz"
      sha256 "cee658e8f77e539432d240215a56782bc9dd76e11fc80bbb5cd61b21de85271b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
