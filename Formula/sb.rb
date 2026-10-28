class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.448"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.448.tar.gz"
      sha256 "d765dc8238a69ae79c21df6b9cac3ef68b519715103e8777528c8460dbb6e68d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.448.tar.gz"
      sha256 "67e8a11b882c96b04276e04063dbd1c8a150bb6516d385ae94d641e288104d7e"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
