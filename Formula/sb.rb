class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.347"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.347.tar.gz"
      sha256 "d180e99c72e4568b77204d0cd6ab6bef017575976e2ed8305802a70b38bd9c63"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.347.tar.gz"
      sha256 "278ea6294700f48c80b50a7227d347f4e4f91eb11a6867354c5f6dd6217311b1"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
