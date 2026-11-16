class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.530"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.530.tar.gz"
      sha256 "0073872e2bde1610f3aa9eb1114bde20c05150667d22737a29d5f6007753b481"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.530.tar.gz"
      sha256 "73d5b4e10c51e56aef6b8b0f722b9747eec7fe2ab29a4d7ef4f587bff7947645"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
