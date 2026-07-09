class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.249"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.249.tar.gz"
      sha256 "87aae137e8bfdde18cd84a9b7989da027f53c82d3d5cc6196882b25fd6549256"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.249.tar.gz"
      sha256 "9a3b30c4a6f2b5dc762ef1f048fd2a77ada99f83ba7c1e28be59bd4d59f34154"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
