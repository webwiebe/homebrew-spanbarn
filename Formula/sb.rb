class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.365"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.365.tar.gz"
      sha256 "28e6300901827af45ea45441b23942c1299befc05b13a9e19fcdf17182f217e8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.365.tar.gz"
      sha256 "c228212eecdb9f1ab0c43fe8a037af433ba6ee423607f1f628e7ccb7ace654b6"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
