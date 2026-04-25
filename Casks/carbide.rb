cask "carbide" do
  version "1.27.0"

  on_arm do
    sha256 "acf20941a4a4ae8a37451b373fc3713a32c83240f43d139a4adff1a7e1a25b72"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "74cb1ee94940ea0d5521808a7f0f0472523ecfb3404e19f79a1823d447fa9e1b"
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
