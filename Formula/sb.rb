class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.521"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.521.tar.gz"
      sha256 "09e6d151599ed40cd48b73d4f9f20f1c19445c38584d363bd5034a3e9ad743ba"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.521.tar.gz"
      sha256 "64819b1db80346e02ccb3653c27716062af072b15458b1c7c8083ff0c0c735d7"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
