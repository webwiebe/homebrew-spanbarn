class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.305"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.305.tar.gz"
      sha256 "8c6d56226d96ddd2aa8921a3b0399d5594fabc6a1992658664d50a2848497d99"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.305.tar.gz"
      sha256 "3a3f412a45e539606a089a3ec4b96b44ac913c06a30ba115cd71ddc5dafed02a"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
