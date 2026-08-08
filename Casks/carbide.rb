cask "carbide" do
  version "2.29.1"

  on_arm do
    sha256 "b2acbd19442ca4b4da9034635708fd6f0348a9717eb5e1e260dfe700548eb960"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "71e0e198e9f95c52c8cba162f8742baf4ee111b4305ee2570da5e27bd8f748ff"
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
