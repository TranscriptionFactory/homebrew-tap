cask "carbide" do
  version "2.5.0"

  on_arm do
    sha256 "17ce4ecf35bb347a7e7d93de6c54be5098e4b2cee0b92c875307be463be280af"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "00a6deeb50cf3681127a6c076d7ce04e41979bbb6c5878334ad4d53fd201b4a5"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_x64.dmg"
  end

  name "Carbide"
  desc "Carbide"
  homepage "https://github.com/TranscriptionFactory/carbide"

  app "carbide.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
