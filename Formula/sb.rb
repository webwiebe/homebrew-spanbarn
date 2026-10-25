class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.424"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.424.tar.gz"
      sha256 "f8b94a6b040f7b64fb8460f3695e405fb35d287636c4352c0c214b9455ddb731"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.424.tar.gz"
      sha256 "69f4ef4ff3e90d91e31aba62d24d6607ccf26566a50125fa0491e685d539faae"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
