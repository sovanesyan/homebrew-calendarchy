class Calendarchy < Formula
  desc "Terminal calendar app for Google Calendar and iCloud"
  homepage "https://github.com/sovanesyan/calendarchy"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sovanesyan/calendarchy/releases/download/v#{version}/calendarchy-aarch64-apple-darwin.tar.gz"
      sha256 "b92e4a5b6cde11a3360f8cc9b0cf221e8c303a62e670088d917de04997f04379"
    end
    on_intel do
      url "https://github.com/sovanesyan/calendarchy/releases/download/v#{version}/calendarchy-x86_64-apple-darwin.tar.gz"
      sha256 "90897c6d948926c5a2ef56f04bf10cf3d3d64ab57bc9ce0d29e1539786977db8"
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
