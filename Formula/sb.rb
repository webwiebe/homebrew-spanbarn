class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.288"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.288.tar.gz"
      sha256 "9350132be507cc6622eaf24f1a3ef5fe7ac283946f739b0b080a88750b07cf5f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.288.tar.gz"
      sha256 "55c3a7e4686fe0e7b801a5381b1063a125fc9f33229506a349dec6c7512c4f7d"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
