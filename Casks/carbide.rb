cask "carbide" do
  version "2.26.3"

  on_arm do
    sha256 "9956937e1efb77897c8ef328bede906c5983c0932a6903fcf6c352fcf4009f5e"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a68620139109ba1d1fb73c7a59b8e5e19dcd10173f513dfb4326f12b6e8c18d8"
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
