class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.396"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.396.tar.gz"
      sha256 "5cccc7225e6b05c4cfa62c7000a89abacecc732e8ef5fd600de6ec60c27feaad"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.396.tar.gz"
      sha256 "c50576476ae38cf59af84b3a8e158997bd2c47990cbf74f8591ec90e829ec941"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
