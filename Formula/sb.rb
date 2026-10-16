class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.385"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.385.tar.gz"
      sha256 "f818856290105c9454848198719c8ee27e3ffffb6b134eee38c31b4a3aaf9f13"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.385.tar.gz"
      sha256 "ccf1995e301d925635a4d7f94ea6c3bdd9008698c5aef8267a98bce8c5703abb"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
