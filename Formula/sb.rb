class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.506"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.506.tar.gz"
      sha256 "71a8e59231e7820114487185f716c21a1cc427fcdd6645aef01b0f2b6da665bc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.506.tar.gz"
      sha256 "7542a584f3d36750b6878b7a72603c1e1df5b13a1b7a02c46e62e5fea9998611"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
