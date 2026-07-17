class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.285"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.285.tar.gz"
      sha256 "5e08eccf84f3a6d7340b9caf86a6322b50d704a994249231363a3349d6125685"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.285.tar.gz"
      sha256 "6b21977920189ee8215a4a5a0eb695b06078ddde28521b0728cc7b3ba43d7a8f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
