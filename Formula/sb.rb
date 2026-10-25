class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.427"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.427.tar.gz"
      sha256 "3088dc0726cd75705a5bb84d731a8cead3ac20a5a2909acd11d6a748e3b0706b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.427.tar.gz"
      sha256 "d04dd46e1c23d193f1e9171bb89124cda092799029f24e321015a8ef40c322be"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
