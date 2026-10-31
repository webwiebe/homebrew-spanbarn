class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.492"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.492.tar.gz"
      sha256 "9bda7c552582060e1f8161f633e80ef72701d3c77e738f8605cbaaee7e536df4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.492.tar.gz"
      sha256 "2c27d7e61e1897f381de4ce78290591cc13c6d5fa02c2929710d22aac91d7d3a"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
