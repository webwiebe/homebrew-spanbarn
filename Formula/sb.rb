class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.360"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.360.tar.gz"
      sha256 "4c8d72789d6c9b2a4246b17a53b60139b85e60d62b6f6c00e01697542b7d51db"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.360.tar.gz"
      sha256 "c44b5c4b14080b89e15cecb0080532df520662641e6d91f77fd322c23e23878a"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
