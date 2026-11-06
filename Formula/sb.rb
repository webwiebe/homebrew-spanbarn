class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.514"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.514.tar.gz"
      sha256 "e230c827a9c833d8614b80c638b256b4e69c3549fa71860eda121d1b7d71ce27"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.514.tar.gz"
      sha256 "85500760dd732766e38c4b4233d699b84876b5b8814f99cf78962bf4b705ea7e"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
