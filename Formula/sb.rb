class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.541"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.541.tar.gz"
      sha256 "899481b2e9fc5c1e448f669e0815519521de2d8aab0e9a73fd60b7121a53e289"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.541.tar.gz"
      sha256 "8d2ff52d43cb7fc454c4e23b54455eab016e0169a6d96cadce2a05bd5b5e9aa7"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
