class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.561"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.561.tar.gz"
      sha256 "af01cb359f27aac2767b46121dcc91caf1b79689f4b61524b2647bc6276baef2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.561.tar.gz"
      sha256 "b3b738faf4efd107fe0cb6de371c0d96127da443a2d1a717166b69dc3bf0e3d7"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
