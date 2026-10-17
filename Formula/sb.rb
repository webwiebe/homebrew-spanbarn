class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.407"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.407.tar.gz"
      sha256 "1c5bdaac62fc1a33de63f8e7ed44670d0e8073614144d59f168eda443c7bbe44"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.407.tar.gz"
      sha256 "66235fbcf2870d476ff37fa756da664b0c37ed890f8d7eb800f82a5257bb0993"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
