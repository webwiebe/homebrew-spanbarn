class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.554"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.554.tar.gz"
      sha256 "a2edc6963deca528a20b1397586e847e6f7f2a2ffcf6b5fa849aeb129e95d988"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.554.tar.gz"
      sha256 "980614d21af3815d402616d3de39b2be7468310358a9d020d97d8ca7a82839b6"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
