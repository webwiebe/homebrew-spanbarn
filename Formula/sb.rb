class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.468"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.468.tar.gz"
      sha256 "473495bc4d341dd613a5fce9567e95a51a4c89c3322fc1ba1c0a9dd63f3689ab"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.468.tar.gz"
      sha256 "f3856b00a3e59739347a3cee9d0b18415cdd3defadac7f9aee5b262dd0b79760"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
