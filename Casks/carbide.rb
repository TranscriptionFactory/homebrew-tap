cask "carbide" do
  version "2.8.0"

  on_arm do
    sha256 "09ccf74e5fc045a15d9b98799b2fdef728a6ea7f404e3afdbff914f5898493d2"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "39c670b2065323ad1daa70b7bfc366a0ebc8cbaac55e940f3cc6154ebc1da359"
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
