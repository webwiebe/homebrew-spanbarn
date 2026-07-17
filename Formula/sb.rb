class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.284"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.284.tar.gz"
      sha256 "d03c87e69f56ba2c12bc29b53796328a145be504380380f028e7e8fdfd88573c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.284.tar.gz"
      sha256 "84527917310f089b86a946adcdbbe3dc6aa73098a43cf0dd8f78717c8669af0b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
