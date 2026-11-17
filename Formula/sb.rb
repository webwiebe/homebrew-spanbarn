class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.544"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.544.tar.gz"
      sha256 "436a218100e78e486d2e2759191a996c614bbc07d433902c9d6c545162b08235"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.544.tar.gz"
      sha256 "e5f697584fa8d6aec9f9708e3017b8118a44dae6d9cd4eb97a841b8c11490bcf"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
