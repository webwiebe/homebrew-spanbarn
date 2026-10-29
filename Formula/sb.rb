class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.475"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.475.tar.gz"
      sha256 "edecd74a8e7126059d7cb1297445ac8c3c7d0953aabbd8162222474460c235ef"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.475.tar.gz"
      sha256 "1165c99aa01cc817f5909bddfb99c1bbbb1c8237f65ff95d07c72c3c3f7dabd1"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
