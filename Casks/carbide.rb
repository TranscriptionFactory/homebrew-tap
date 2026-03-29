cask "carbide" do
  version "1.6.1"

  on_arm do
    sha256 "d05bf01587365376ac84ba9b4287b98d18cd784f1056cb4ea488a553c0f15cfa"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "dcd49b491200b161090bd16d3a0a6969345966096cae862a77893a34b76ecc0e"
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
