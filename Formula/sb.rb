class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.235"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.235.tar.gz"
      sha256 "6db299e833f3c7ab3371638a20fd5c05237185fb30f073c5d0f4f8df8198c51f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.235.tar.gz"
      sha256 "0514a3a76297c07ca8f207697268e525294c728cfe91c59f2893b17c70521ba2"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
