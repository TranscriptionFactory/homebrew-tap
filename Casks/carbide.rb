cask "carbide" do
  version "2.35.1"

  on_arm do
    sha256 "d5a3cc96449540e5d841a9d654cae336e4350e57f0b7d9eeaab9fa15d03b2909"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "b12b3c7c4acb208cb5afe13c45fbb9ee1d49b17579654377b029e89c48318fff"
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
