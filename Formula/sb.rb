class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.467"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.467.tar.gz"
      sha256 "844f271a0c872c03d163b468ef71b77492e523635d533b171e91cfd8f8756a54"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.467.tar.gz"
      sha256 "8c85e4a718b648e4d3eeacb5174c8f3cb2972407b130f113039771f8701e55ea"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
