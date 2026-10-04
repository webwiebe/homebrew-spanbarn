class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.341"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.341.tar.gz"
      sha256 "cdaef12030bcf3b450018599c89599d586d856c9184ec7bc2cad766574d2b28f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.341.tar.gz"
      sha256 "5dff423e0f25c22253b8d2b85c2370ee68c5ce88f59946e3d465d8d94af4cdbd"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
