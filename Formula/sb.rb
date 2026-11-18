class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.556"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.556.tar.gz"
      sha256 "ebbf8fd6079845d9a1bff8345bdc0e70b621dccd432a3a852c34cdd3a9aa98d9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.556.tar.gz"
      sha256 "e4cade12930ff82ed7a940033a1f4ec5d1a2494250229ced867ae798450a3919"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
