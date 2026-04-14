cask "carbide" do
  version "1.21.0"

  on_arm do
    sha256 "9a9fe1be923e5b853cdc505aad0793b6cbb9fe5e0ba3514ed4d329973cc743e7"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3867ddf2cd51d1eadbcf96bdde3c9031c6fd6f7c33812cd37a27f5e59bcced08"
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
