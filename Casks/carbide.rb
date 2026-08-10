cask "carbide" do
  version "2.29.3"

  on_arm do
    sha256 "532d27f361f4fdd7eebf15d06635875aebc70407988490a074cca32c32ef6457"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "2945ac2af0f76ff2bb293e91d4a2b189f5cb72800dd218935bbba2ebe85a9140"
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
