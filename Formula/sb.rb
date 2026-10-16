class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.390"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.390.tar.gz"
      sha256 "d50a38c714ff8462eca8c38b9fc71d4a1bf2f31d42b9af74caac2528e1999584"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.390.tar.gz"
      sha256 "350eaf8ba278fd34c4bcbbff917514fa8079fd0746be108ff7173419fbe2c5d4"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
