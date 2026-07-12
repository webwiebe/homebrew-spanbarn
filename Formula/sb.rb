class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.267"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.267.tar.gz"
      sha256 "92fbd2bddb3bda39046a2af56649200615fe402637159852d6f4ac1855425e62"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.267.tar.gz"
      sha256 "a664087b9e88f6dfaf830e3eef07f311dd13c47a3e48a93f88ab2f76abaf5ec1"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
