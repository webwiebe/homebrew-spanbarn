class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.566"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.566.tar.gz"
      sha256 "67b9368ee6644955c159f48df6bb99f06e039758bb65f4739e1ffdf8dec6ed2a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.566.tar.gz"
      sha256 "5e1fe9b2415d87393498f4497171d007b8fe8b0878782206cbeac0110d8b60d8"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
