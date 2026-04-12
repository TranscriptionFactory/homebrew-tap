cask "carbide" do
  version "1.20.0"

  on_arm do
    sha256 "957b5d863e6e1cc1cc6886b2bae22df8577dc523b107e1c352ee273c2808b007"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "14369e906159f5a3d1576f43e891ec9ff416b225668a2893993cbfde8cf17b04"
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
