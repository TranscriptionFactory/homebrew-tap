cask "carbide" do
  version "2.3.1"

  on_arm do
    sha256 "7cfe23397776a951f839ebed21316e6db374ed26a7e2b8f605d1ac281c12766e"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e93fbfc9b35e37207db1bbbde3e1e094bec863f9f986d7125270761f4bbf9fe3"
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
