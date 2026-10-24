class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.421"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.421.tar.gz"
      sha256 "b2461c90a6a4e1b968a2e611b4bf55c036e4b18bc1551596d428623100f81990"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.421.tar.gz"
      sha256 "b12c19ec8e9ecfe1c8d4de1a4a27725ce312cccff2f608a652359dee7269a15a"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
