class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.426"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.426.tar.gz"
      sha256 "4fa021734add551a281ef94b259e89bbc905c841a6acf2efd57e150185630ab4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.426.tar.gz"
      sha256 "611c85d52c8f77e543d94cc207f755afcb4028820d5939d9d8a221bce606bdb0"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
