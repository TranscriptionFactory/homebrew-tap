cask "carbide" do
  version "2.29.0"

  on_arm do
    sha256 "082505088ac170f20317fabd2955769cb9ee175a17e1cc40493ae3e89729e046"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9bc0e96722f09f5fff32339741c9673f6c959792230ed842cf26d6680561fa26"
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
