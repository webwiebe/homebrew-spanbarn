class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.535"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.535.tar.gz"
      sha256 "31aa3d0b9dc66a4c4cbe7950155d18d1422b6dc7bb59186b11b6dc88456720ce"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.535.tar.gz"
      sha256 "f10d7735e16aaceab4c519efa30cada3d5e55e78c10f9518077f49f6331ba88e"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
