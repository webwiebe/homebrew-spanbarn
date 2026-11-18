class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.553"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.553.tar.gz"
      sha256 "118292d36b20b2a375acb754aba850528fb76ce8aa6ae8a6a572e64ee551daba"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.553.tar.gz"
      sha256 "0396e38485eaea60e6885d0d09188c15fa0b9c8f8bcf9894c1f4bb2995397177"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
