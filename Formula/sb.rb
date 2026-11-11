class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.524"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.524.tar.gz"
      sha256 "7710eb2d7c79fcf555562f993e4fd73210a0f24ea50494a41554ec20ac342a1f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.524.tar.gz"
      sha256 "d60690bc7e73e5fe5d3805261e6d72751e5d57dc9a1c962378f45ca4d4fc0dc4"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
