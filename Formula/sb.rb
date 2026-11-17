class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.542"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.542.tar.gz"
      sha256 "7ad2a14fb7ac559793548d4d7aa1751fb8e8c0a00e9a56c70ddca01ee2309416"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.542.tar.gz"
      sha256 "e66a5c05e443476cf5777e8fff259c4338c1b03d09117d9c3777b536c7738c43"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
