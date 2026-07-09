class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.260"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.260.tar.gz"
      sha256 "4a0cb6e9ebdaa1aa4f2523d15db593e486f7a73fcc6640cce9dd2b19657da519"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.260.tar.gz"
      sha256 "7e24334be544b069428166e7798179c82f99de89aa334098de1aea280e1adb30"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
