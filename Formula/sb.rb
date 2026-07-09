class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.248"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.248.tar.gz"
      sha256 "1a8166f7d21dd98d9414e69093949f47115ab5720a4340c4ab320af03924cd28"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.248.tar.gz"
      sha256 "8987405338edb0053eb07acc6b7bc9a9f2bd88e17f9457e6e2f991024c486caf"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
