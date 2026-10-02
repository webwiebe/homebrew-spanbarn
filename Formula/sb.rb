class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.317"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.317.tar.gz"
      sha256 "e0d12e08364de3e2685c849c51b638932b8a674b81b4acc477ca8cc5114cd312"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.317.tar.gz"
      sha256 "51d84b1b1d2475d78e574d48b71c47bd9040a166818bf265fb8dd7a28eddb49f"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
