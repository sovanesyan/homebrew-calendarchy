class Calendarchy < Formula
  desc "Terminal calendar app for Google Calendar and iCloud"
  homepage "https://github.com/sovanesyan/calendarchy"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sovanesyan/calendarchy/releases/download/v#{version}/calendarchy-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/sovanesyan/calendarchy/releases/download/v#{version}/calendarchy-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "calendarchy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/calendarchy --version")
  end
end
