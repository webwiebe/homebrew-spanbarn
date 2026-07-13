class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.272"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.272.tar.gz"
      sha256 "cb17cf5f9d7ce9fa410d533ea30123cc73a1b868546826a576c861d8e506659a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.272.tar.gz"
      sha256 "eb37cb2936b2b97cac937520d3f4d35bc1f9d60751e49e021976c051a4b3d690"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
