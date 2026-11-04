class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.500"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.500.tar.gz"
      sha256 "31c614252f83686a62ab4e3ccb220c3928e753561ef708a9788bc6fa2205ab72"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.500.tar.gz"
      sha256 "b7a9dfd539dca13ad9bd4a4592f3af8f4c0207446071dbff66e6ba36a777eb3d"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
