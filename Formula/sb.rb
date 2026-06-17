class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.241"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.241.tar.gz"
      sha256 "62c8557e75efe9abfd54ba97ec89496a6efa56d4acfa3e1285cfd6dd51cedc50"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.241.tar.gz"
      sha256 "48957f6d19d0caa07b0e93ee02865aa11a42fdc4140a9ffa26ae6ee4464ef16f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
