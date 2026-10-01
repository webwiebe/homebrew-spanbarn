class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.310"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.310.tar.gz"
      sha256 "e97b1e4f9ac89f95ab423e411b69247ee4e9c8de5e05c2549c5804c751e1d500"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.310.tar.gz"
      sha256 "0989b5ba0ba11da9e55870d07d1af03180657741b42a195f30efde23b14c2a9b"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
