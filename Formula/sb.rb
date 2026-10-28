class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.458"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.458.tar.gz"
      sha256 "7bb7d15c9ee98d709acedba0ee03f0e9323b45e1d484099f47e39595870cc939"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.458.tar.gz"
      sha256 "e91b48dbefaf42c33eba8440c023db75e637e8b9543ed4b696d9663b3bc6d2ff"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
