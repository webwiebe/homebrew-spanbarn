class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.394"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.394.tar.gz"
      sha256 "613dae4c3327858d23ea3fc2820b587a74bb6c276af3c674fc3f556a52825097"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.394.tar.gz"
      sha256 "e8b8b06d5e9a3496a30dbce1d5194ab0ef22634e33c534a502cf76f251bd80c3"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
