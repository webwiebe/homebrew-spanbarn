class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.398"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.398.tar.gz"
      sha256 "9b6be51dd5920ab3b6daf8cf196e09ed3b898c4e1dc7ecf699e0b10998d59ffd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.398.tar.gz"
      sha256 "9f877735e7148c0e7e8c34315316b959f1efbd50aaf7a4331276893a3fa510c4"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
