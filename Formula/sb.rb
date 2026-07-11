class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.265"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.265.tar.gz"
      sha256 "e2f753985842a51cbf027adaf0d1f5f3d4b124aad3d77d9b84e62d4b7f4f41fe"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.265.tar.gz"
      sha256 "9553425af8e698f5db2509c48e2a54c073d5128a0cdd2e0dce0187f90e4c7aee"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
