class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.451"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.451.tar.gz"
      sha256 "cf6af7f38ff386f024e95c7202dc5bc548a43670f4d22fbf6eb3d646858f5325"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.451.tar.gz"
      sha256 "d0c597d97ba693e5be506922f6cb2bdce7e1073d23552ca6b391d25ff6dc8b1c"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
