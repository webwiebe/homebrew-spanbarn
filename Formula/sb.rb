class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.301"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.301.tar.gz"
      sha256 "7de77dabf40ee0aac0d91b352b7dc7094583cd8c14fe9271b55e5fa34d1f3d2b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.301.tar.gz"
      sha256 "4b2ec46717adc1b4dbd2efdd5673a335e4b29af9dcbdaed55b8239be6dec0842"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
