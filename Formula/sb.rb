class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.393"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.393.tar.gz"
      sha256 "0fc8225d8af2972375830406958752512e65d1ef9995c0cc2df35182b14482f5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.393.tar.gz"
      sha256 "24e597d1b8bd1ca12536f4aad515f675185a8b0a80f02fe5e7fde3824742973a"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
