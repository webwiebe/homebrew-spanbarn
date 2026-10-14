class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.378"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.378.tar.gz"
      sha256 "0a600a569d7221a3e39ae2fbc95e59896570c669c146ea2ae5a7d1699b1672ab"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.378.tar.gz"
      sha256 "8f69a4303774460693559970da566e95a0582f69cd9322e94e23dfdb2199e5e2"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
