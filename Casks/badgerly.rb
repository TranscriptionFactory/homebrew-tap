cask "badgerly" do
  version "1.1.0"

  on_arm do
    sha256 "c5609e112589604b9ebec671901ea44e3529b389bf8bdf31cf2790cf7b8ef624"
    url "https://github.com/TranscriptionFactory/badgerly/releases/download/v#{version}/badgerly_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "11dc584568839feb1dfb7e1f0c80cb63359cbef3348c6860b2ede38df0d21fef"
    url "https://github.com/TranscriptionFactory/badgerly/releases/download/v#{version}/badgerly_#{version}_x64.dmg"
  end

  name "Badgerly"
  desc "Badgerly"
  homepage "https://github.com/TranscriptionFactory/badgerly"

  app "Badgerly.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
