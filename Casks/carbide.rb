cask "carbide" do
  version "2.12.0"

  on_arm do
    sha256 "6d89cf6a8d6f183c7cc491830cb5f18234f1730f2cd1576bb18440232acd5e62"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "71f14d8b8d277830689b112707bda508a1adb47d325574c2fd399c33c7f31281"
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
