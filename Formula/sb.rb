class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.540"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.540.tar.gz"
      sha256 "0dde5cb8607cb69c6810b7e77960d0fdc8379cd9e483eefcd5ceb337649cbb46"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.540.tar.gz"
      sha256 "25fb1ba72e8f49d7b96c25c86ac6c9f461316547aa2f86dd0580825a74a82039"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
