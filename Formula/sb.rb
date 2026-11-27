class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.582"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.582.tar.gz"
      sha256 "2b00135c9445be1272960d1f48ef1bd976e636423d8b45b8cab7bcc62be13b40"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.582.tar.gz"
      sha256 "5cc1f625b508607f923e6f75a2f96b49aaf81837008ee92c6e7741f143b36983"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
