class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.473"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.473.tar.gz"
      sha256 "acb58ac70c044c685144e3505260c5e5a9ffdafde171ef9d7ce1820586f2219e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.473.tar.gz"
      sha256 "07632c458b253fc3d7bc21cd0257e7c3f6259f1350a338a3e0d4b0111cd9d108"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
