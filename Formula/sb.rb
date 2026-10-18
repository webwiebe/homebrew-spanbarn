class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.414"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.414.tar.gz"
      sha256 "532cf1f10945da147dafacdecca031137a45219dce6adf50cd55878e1099ab15"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.414.tar.gz"
      sha256 "a73b66a0ae6f355e0e94f489de0b65af0aea096b9dd7cdbf98c3c17742587e95"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
