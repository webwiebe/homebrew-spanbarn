class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.382"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.382.tar.gz"
      sha256 "c479e610faf68361e968ffb6d09eed96d33490562bb830b7de462c66b4402f05"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.382.tar.gz"
      sha256 "56076b84d6bc7fb24c94e39da2a833ba4f07dc0e2dc837acb11429550c8fd659"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
