class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.575"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.575.tar.gz"
      sha256 "8e39d6f160d759ff3742f3c500c2ae467621c59b1c927fbc09783e9a634f01c2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.575.tar.gz"
      sha256 "10647ed05c7cd1556af9cd31c6ddb1896a7c06e2fee1f0d28423842c2e3cf909"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
