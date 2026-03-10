class Calendarchy < Formula
  desc "Terminal calendar app for Google Calendar and iCloud"
  homepage "https://github.com/sovanesyan/calendarchy"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sovanesyan/calendarchy/releases/download/v#{version}/calendarchy-aarch64-apple-darwin.tar.gz"
      sha256 "e6431e1997584d1276823b03504ac82ddda234ab76f734d0e02db4c80d70336f"
    end
    on_intel do
      url "https://github.com/sovanesyan/calendarchy/releases/download/v#{version}/calendarchy-x86_64-apple-darwin.tar.gz"
      sha256 "c633553acf1840681da2d403b218fb79837c3c708f4a976a0e089c1c9a20aca8"
    end
  end

  def install
    bin.install "calendarchy"
    bin.install "calendarchy-hotkey"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/calendarchy --version")
  end
end
