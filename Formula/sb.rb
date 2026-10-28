class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.446"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.446.tar.gz"
      sha256 "bd057cf2580e99848271806c61cd03ffeea8889dfe3062feb97a6d5f4762bc62"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.446.tar.gz"
      sha256 "bc64eec4506ed08ef88b957afdd5842020a02f64c0588b57346cd21881a4126a"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
