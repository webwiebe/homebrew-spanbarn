class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.366"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.366.tar.gz"
      sha256 "00d1dbd7d7be79035fcf88525202e0af904326d743e69734126e20637d8cc3dd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.366.tar.gz"
      sha256 "62f9d6b1c47c7f2e08235e90a0d7964b1c9d5d2573563e06537d0cf7197a4cbf"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
