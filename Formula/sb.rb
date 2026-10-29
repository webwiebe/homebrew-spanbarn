class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.487"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.487.tar.gz"
      sha256 "6077c70c93199904780873ee48eee04d6e6f93ae109316dd772bc93e9296ee0f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.487.tar.gz"
      sha256 "17423da566fdca5410a77419d6c32b3ab96b19bc8936ae988e4aa5eed65ed297"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
