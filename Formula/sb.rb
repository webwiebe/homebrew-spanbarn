class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.557"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.557.tar.gz"
      sha256 "cfe338a50fcf184b3f381341616c97634df83d8f9830abc911f1d2ebe819f02e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.557.tar.gz"
      sha256 "8d3228efd7891dfccd28c4b9fa9db4953d2bfc803baabb4981b450151097afc7"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
