class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.250"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.250.tar.gz"
      sha256 "d2f120e5d500287eb215cb930cc54ed427028ba8b9dda8c1f28d14321263018d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.250.tar.gz"
      sha256 "ec63c3d6ab3d7acad392391607c7f1f181768cc5f270e4347e8ec55f96034c2d"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
