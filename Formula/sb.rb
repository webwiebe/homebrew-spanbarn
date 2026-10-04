class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.327"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.327.tar.gz"
      sha256 "76e3d83fb13bbe0a5eadfb50410be23e55cb1779f820070f879e22d478ac851b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.327.tar.gz"
      sha256 "16b26df7d9767d76cbf4e889104fea098a91c07b169fb3ab6d214df5649929a4"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
