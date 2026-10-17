class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.412"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.412.tar.gz"
      sha256 "ec4b5359409f8111354aa46dee39f3dcab15eca62e41325f05db0078a9f49a13"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.412.tar.gz"
      sha256 "9509bcc2d6701d2cf631297cb9df47f572a9623c9c4862710398272992c88a02"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
