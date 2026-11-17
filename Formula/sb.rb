class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.552"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.552.tar.gz"
      sha256 "255267666c66c18e9e889512f95b785f8ffda1e78f7ecf4c55654fdeb2636e1b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.552.tar.gz"
      sha256 "7c5f4c76a944a9b80113c219dfeadd4b24d60d1bb4545afc01f8df63106e74e2"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
