class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.344"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.344.tar.gz"
      sha256 "c6be155d5c00a341990aa8d867ae1845f096d4e7c9915d5fd73a8d3bf4959469"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.344.tar.gz"
      sha256 "d97d261f35bc6c603b2bf297b40cbabad19211b4da9cbd4547e67f8c7d6ab934"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
