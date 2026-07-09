class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.251"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.251.tar.gz"
      sha256 "d24a5bb2d57761f1602053d6610165b5291e099536d5d9ac4caca6b8fe375619"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.251.tar.gz"
      sha256 "7c8e8253f88c469a496e7e9dd7a7bd9512866c852f941c93084f0837f4766728"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
