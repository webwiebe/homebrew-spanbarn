class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.422"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.422.tar.gz"
      sha256 "850e7edd5d1b5a526de6ac422180fb66afe67d327bfe57ce703ea34f9b025eb7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.422.tar.gz"
      sha256 "6074ae07363f528b50f03595effafd21f8e337bd7b742e1e0498a34258561eba"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
