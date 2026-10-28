class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.464"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.464.tar.gz"
      sha256 "c47f49af751427e74e8ec5bacabd2108d66632a5c5010c7195f9bb9b63a5d139"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.464.tar.gz"
      sha256 "6c30ed6722d8bca31ee7787cd3a201e5c327c9b8a636cf4c11a6382dd0de4d01"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
