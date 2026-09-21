cask "carbide" do
  version "2.38.1"

  on_arm do
    sha256 "926638eb8ad2113e10626146c49fc51727fa9037eb69ffbe0a8b17b42a0bc255"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "0e5501ab5e7c345c43e6ceb5eb7f6e1bb049dea0a0f9f1b0f92e2ea302319229"
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
