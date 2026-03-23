cask "badgerly" do
  version "1.1.0"

  on_arm do
    sha256 "3216772b4c9594bc701e5334c549c47bade76862999af66b5d6e33ce9e8b1fc7"
    url "https://github.com/TranscriptionFactory/badgerly/releases/download/v#{version}/badgerly_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e06cb414aa1727d2a2fbec3424d4cbd8c4803e4c7f7f957299a756f41a7f8551"
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
