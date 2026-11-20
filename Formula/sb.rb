class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.564"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.564.tar.gz"
      sha256 "b17dbc89dcd2ff658b4dcea37fc12d1cf942e997862dd38310ad089db27aec67"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.564.tar.gz"
      sha256 "013aa472aea123f679eb82546004b757562e680f2622d4feb34bf85a6b72aa6a"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
