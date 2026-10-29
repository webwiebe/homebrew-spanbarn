class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.483"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.483.tar.gz"
      sha256 "6a3abab24027450e361210b228c967750a4888efb1b24beb35fd1c8af3ff1244"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.483.tar.gz"
      sha256 "2c0c51cbade23fd4a0c24e2916bf5d0cda3e63e7b134a94a8aad1cb68afa2a1f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
