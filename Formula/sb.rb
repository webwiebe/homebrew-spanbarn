class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.465"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.465.tar.gz"
      sha256 "257aff5221c42e5ca5799f14d0e869f20107cb2b3afed9a9d65645f47f7ad40d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.465.tar.gz"
      sha256 "889e84b5504acb4c42b684f2bf576e70cbb3da12ccefe5fb14d88beccd31d291"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
