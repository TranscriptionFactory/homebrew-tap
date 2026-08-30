cask "carbide" do
  version "2.34.7"

  on_arm do
    sha256 "17a5e1341328517dcf9e22bccac94ff1f5d788d9e4ee80334fa84804fc114279"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "766d3ec058f7222b5acee1b67470f9f3934ea0df4144927f828e9afcc801a2eb"
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
