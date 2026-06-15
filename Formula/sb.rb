class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.229"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.229.tar.gz"
      sha256 "2304f2b7205dd9540044434a19cda6d8858f8e4dc3bbdcedd570241bd0af9c67"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.229.tar.gz"
      sha256 "cf1b9e8027d1926e88ea04da84232bf223e6c145e651b8b9330f86e04d562385"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
