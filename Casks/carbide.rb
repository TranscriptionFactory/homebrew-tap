cask "carbide" do
  version "1.11.1"

  on_arm do
    sha256 "01e233fcefccc2de60a9cf7e48b1e23d547994c5350e8814e584b9577948ab36"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "bcc15d2e4081375b577b5e1064ed4caa47560bb1cd22c290995b0098d7a010ca"
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
