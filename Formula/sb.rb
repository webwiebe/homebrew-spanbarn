class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.263"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.263.tar.gz"
      sha256 "267e8986d8f02ce3eda66fd949aa98bcafe3426ff077ae461abdc62b03ae8a5b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.263.tar.gz"
      sha256 "20cbaa43adfe2737c4470305f213a12c35088e4cf623540038c3be7aa43b5b0f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
