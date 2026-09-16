class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.298"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.298.tar.gz"
      sha256 "eaa560b347f82b6cd386462f428c438ea4ecdbf38810248e7f3b20b37bddc481"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.298.tar.gz"
      sha256 "262fd1b16eeda0f2afc4994015c4fa50ec5794bbe415036553a8dc7b51acc136"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
