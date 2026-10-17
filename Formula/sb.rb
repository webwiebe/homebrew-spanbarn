class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.409"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.409.tar.gz"
      sha256 "b1fc91ef850b9df28f1b7583f4e529953574ac6ef3c99be2b069d31328491ae2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.409.tar.gz"
      sha256 "5c0cd60dcb9ac2056b25bd3f893a5b6a4ec3ddaec8fde7123c895f6abd7f3f0b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
