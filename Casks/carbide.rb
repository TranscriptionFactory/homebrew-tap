cask "carbide" do
  version "2.23.1"

  on_arm do
    sha256 "fb6e602140eceaec0c12d514a33de3a769d252322baef05f232f3807722739a1"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "0701469626aecb8fe55071cb9aaf26c4ef6693fe0c6ba75439bd0b28b7cef67e"
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
