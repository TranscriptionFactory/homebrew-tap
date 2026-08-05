cask "carbide" do
  version "2.27.0"

  on_arm do
    sha256 "387c90ddded26bed8f44b3c32cd0c939c06ea796e415ace71c0dd1e5b5fd220f"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "1d86d88b00c17048bdaff97adc164287a855f12b9544d5fb654bf00aabcc1370"
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
