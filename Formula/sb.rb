class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.296"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.296.tar.gz"
      sha256 "22c958a9ad6c2b21d2bdd4071d04ec4229a96b6761b3a05397888ee58ce04e02"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.296.tar.gz"
      sha256 "7935bf7626c859f9e56aeb7fbe5e526e558176c6c064645241ead325012d2663"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
