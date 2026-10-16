class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.388"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.388.tar.gz"
      sha256 "f97c3842e2ee93017cfddf49444506e221f0caf8c4a52752ae807570085ef8cb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.388.tar.gz"
      sha256 "1a8d96f932e2b4a6f45a018b5636fb4f619a7b59d77359a52bdc7b672795e281"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
