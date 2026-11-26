class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.580"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.580.tar.gz"
      sha256 "2f73b25641252ef825a8a4140d28586aba78b67cc7a05a8da3510311104097bd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.580.tar.gz"
      sha256 "2971033b12bda78ed81d517d230cf61f53b624825b5cd0df4023da4a2b3cfa79"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
