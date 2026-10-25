class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.425"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.425.tar.gz"
      sha256 "9800b30e9f81d5ca32901fe36a8c0fb5c0c73b18f4cf922af45c10b1e7ef4051"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.425.tar.gz"
      sha256 "257960a222da6ea5823c1c9cae3a2aa520fb3b5ba2826bf2b5155051a5f93fa5"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
