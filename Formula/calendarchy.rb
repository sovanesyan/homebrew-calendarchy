class Calendarchy < Formula
  desc "Terminal calendar app for Google Calendar and iCloud"
  homepage "https://github.com/sovanesyan/calendarchy"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sovanesyan/calendarchy/releases/download/v#{version}/calendarchy-aarch64-apple-darwin.tar.gz"
      sha256 "1ebf03be61ad1f59fdb32de3b47721f079e48899a9ecb15a13450b4f0ec29c41"
    end
    on_intel do
      url "https://github.com/sovanesyan/calendarchy/releases/download/v#{version}/calendarchy-x86_64-apple-darwin.tar.gz"
      sha256 "e21f1f7db0a7e4d125682ef6cde9a5dfcfc71f33909556b694a48e05f38b8d6a"
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
