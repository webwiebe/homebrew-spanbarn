class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.397"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.397.tar.gz"
      sha256 "77fc13a5b8d087091a5c98dfcb332067a02d025b98e447ca91566a2cbcd4f9fe"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.397.tar.gz"
      sha256 "a57fdc05e03e91bd8972f1a196b6e4358a4eab20e2e7b686a74b9647de3db505"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
