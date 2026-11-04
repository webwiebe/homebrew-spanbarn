class Sb < Formula
  desc "SpanBarn CLI — query traces, logs, metrics and prompt samples"
  homepage "https://github.com/wiebe-xyz/spanbarn"
  version "0.3.503"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/sb-darwin-amd64-0.3.503.tar.gz"
      sha256 "8ae35603f95eb99fbb4c4ae0fd3f0b8129a74b552ac0801a14bd527bf5fb09dd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/sb-darwin-arm64-0.3.503.tar.gz"
      sha256 "380264feda33c06bb50187610715c0e6e223a1bfd36c2df470858e469a16aedf"
    end
  end

  def install
    bin.install "sb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sb version")
  end
end
