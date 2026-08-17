class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.293"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.293.tar.gz"
      sha256 "b7ccb611ae7a73771879aae9a02d7a46918b2043f82a50c6e54e81fbd36b214c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.293.tar.gz"
      sha256 "675def06540223de24bad64565718cb904f7dec7d7b48cca6bdde2e78c8dceb9"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
