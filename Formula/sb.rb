class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.234"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.234.tar.gz"
      sha256 "4ac3e402e6abb63de672145e84d9462f1f425bb06f1d3adbbefc97a609d21749"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.234.tar.gz"
      sha256 "460a432e7b4031ce7e8d77eb08cec08135ac253dffd79e0eebab15db19dcbaa9"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
