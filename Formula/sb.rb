class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.418"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.418.tar.gz"
      sha256 "19aa75344fcb9f3ed5c9ce01e76485cd0ad660d1223a57e4cec832fed776a4b7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.418.tar.gz"
      sha256 "01e8ee581c99ba9a843c5328be9aa8bf3d520bfa12aca6f3d0b99c21397d7282"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
