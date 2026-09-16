class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.300"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.300.tar.gz"
      sha256 "df768d699204ee2ae3e74fd16b9a964326f4e0a55ac34731cb3cbeef48136a86"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.300.tar.gz"
      sha256 "44521d47384b91da3d67cd50a1cd47361105a07ba8a21df5b98d5e2690bbfd90"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
