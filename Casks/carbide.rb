cask "carbide" do
  version "2.40.2"

  on_arm do
    sha256 "90d2b024148750d41d422630a2121d60fa4200170aa6871aa07e7da22cb1b4d8"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "0f78317244ec8574029842127390cf277e44acdb777231050d2786b39cae14c6"
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
