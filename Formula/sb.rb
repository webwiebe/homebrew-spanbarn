class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.271"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.271.tar.gz"
      sha256 "cce5cc6a9d5fd5c92036627df5193fb1a295bccee81d5db8ee3e48cdec089cc7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.271.tar.gz"
      sha256 "db7a3bcd47336827694d8d322687409661a377f79297ec8c484922c0d580b9bc"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
