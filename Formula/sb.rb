class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.432"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.432.tar.gz"
      sha256 "9c5c5f9d38f9e549a64206f35f375b60cc3be4e68075dcc31aa91b4be5586047"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.432.tar.gz"
      sha256 "3544540d776fa07cad554bc95efd9ee2e47c20b01f9205cc91a5cf3b2cb1e0ef"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
