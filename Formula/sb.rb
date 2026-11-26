class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.579"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.579.tar.gz"
      sha256 "86d4e32760e2280e0777bc8b9b01e7c307145a66e1b52d7bfc6998b306d71d5b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.579.tar.gz"
      sha256 "872a9bb5d920c4b9771324d185512b19b11df8c2cd3b80e3b85ecfa81320b01b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
