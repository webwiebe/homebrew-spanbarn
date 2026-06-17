class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.240"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.240.tar.gz"
      sha256 "cc843a2f06acb6902ab8ac60a0de817a4e40a4bcd6eec278da7a44c0df4a65a9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.240.tar.gz"
      sha256 "4318cc37fe5f344aa260e6692b9fea6081163a236e83d66c1195272c40310313"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
