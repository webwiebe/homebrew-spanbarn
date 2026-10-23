class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.420"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.420.tar.gz"
      sha256 "dd8e0ea6a54afb26242b52323f6fd0d8b3707b5e7f820abd07e2358539af3c5a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.420.tar.gz"
      sha256 "45d5898f613ce247aaa8949b72bc35c122aa71083a484ab5007a12e5c71e1718"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
