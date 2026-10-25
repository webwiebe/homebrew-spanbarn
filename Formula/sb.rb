class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.428"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.428.tar.gz"
      sha256 "920e90712c92896fb80dfff7ab0797b37ae82cc5d27dd6df61089363ddb2e4d2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.428.tar.gz"
      sha256 "0cdeb3974486a4452c91eaccfd66b932bf53b641d248d8ab3a6137967160af41"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
