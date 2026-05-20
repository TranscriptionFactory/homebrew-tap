cask "carbide" do
  version "1.38.0"

  on_arm do
    sha256 "69264efeebeca4f3d28127ccd0b15e17173c0b8790c9f7e5911241501751ecfd"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "fc385e7c304b4ecf7ae3e1fac8cb0d8ea99fbaac42be7a73aa37fdf8ab0849c9"
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
