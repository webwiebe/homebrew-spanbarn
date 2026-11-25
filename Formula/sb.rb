class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.574"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.574.tar.gz"
      sha256 "00b5f07c404d67127236a0649686ee3d5b84266b1f6b34f0b3c802b04dd0e882"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.574.tar.gz"
      sha256 "898a9c09b8ee4a85d9102651c5060b7793871f79b87b7b1a25d42328e71dde1e"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
