cask "badgerly" do
  version "1.1.0"

  on_arm do
    sha256 "1f2e97a2780484893de4cc11db90903d23219b0f3064f78367d263f2392ed2bf"
    url "https://github.com/TranscriptionFactory/badgerly/releases/download/v#{version}/badgerly_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "67fa21915d8a36bc5f60152cc74aaa2db22d8fc2a9f8264fc9117620c32712b8"
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
