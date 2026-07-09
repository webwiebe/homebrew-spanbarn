class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.258"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.258.tar.gz"
      sha256 "4e51ff3ce29bc533a92ec4909d0f18fcd0978072ec74dda55b2303e9e52ab957"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.258.tar.gz"
      sha256 "dec4682a36f0434ad0f9cdf94a0af467b5d7ac6a63d33a3176c70a15d4a024be"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
