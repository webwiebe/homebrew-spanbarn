class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.547"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.547.tar.gz"
      sha256 "92a888110f024f36a8cfe33703b27406d32f424a6766cce78e02b2cd0c5ec97d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.547.tar.gz"
      sha256 "885d9e0d0a10e3ca915da7063ea1eee92ad595686e936dfa653d366c026c9fb6"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
