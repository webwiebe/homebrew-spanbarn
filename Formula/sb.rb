class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.445"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.445.tar.gz"
      sha256 "547d3851738fea36a4f263717694d14c5f14685175882cf6bf6c93224ae4f6ec"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.445.tar.gz"
      sha256 "fa2e5b88149b0efe8d25afb331e4e50ec54c3460152f8bb8a74c5a26bf940d2d"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
