class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.254"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.254.tar.gz"
      sha256 "59ea0fc1993c4c8dcde59cff5f40a3598317dd7930d4f809e0698030f6a22657"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.254.tar.gz"
      sha256 "05dda63a96825fd16036cf250c8286ddd4c2ae999a30b4c949a5a4ac6b140ab1"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
