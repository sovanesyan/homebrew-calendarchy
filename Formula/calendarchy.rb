class Calendarchy < Formula
  desc "Terminal calendar app for Google Calendar and iCloud"
  homepage "https://github.com/sovanesyan/calendarchy"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sovanesyan/calendarchy/releases/download/v#{version}/calendarchy-aarch64-apple-darwin.tar.gz"
      sha256 "5b78c465db78c860412818b271ce6f7a4df14160b98b343dfb92a5ba5b1ea78a"
    end
    on_intel do
      url "https://github.com/sovanesyan/calendarchy/releases/download/v#{version}/calendarchy-x86_64-apple-darwin.tar.gz"
      sha256 "6f65924ac710233d29544428ef001d69059ace2b5b9d87942122419fa5cba144"
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
