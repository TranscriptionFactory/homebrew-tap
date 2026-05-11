cask "carbide" do
  version "1.35.0"

  on_arm do
    sha256 "6ebc91c3d7dfc62bc532c406da9042b3189decf1f383c860661852437bb5f346"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "b7a5bec3b8f7b86d4995b5f577fc977aaae63cd23848cc6e2f443b80dd6e30e9"
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
