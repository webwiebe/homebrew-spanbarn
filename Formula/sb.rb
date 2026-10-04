class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.334"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.334.tar.gz"
      sha256 "aadef72760bfb88e34e15ff7d0a38065e60f4eaee272449a12e5298fdb17cde9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.334.tar.gz"
      sha256 "80bead0884c6258be9bff8bdd82f329d2986ccf2994e40ef63a0c04aa62e8a7a"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
