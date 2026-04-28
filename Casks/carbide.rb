cask "carbide" do
  version "1.29.0"

  on_arm do
    sha256 "82847039c2fa9bc2a9ff29dfb9c2869ac1bf81aee8cc1e5276677f8f708b6ed9"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "095c871704b972a898b0d42ca30720758347726934c2e7efb6cbf57b36c3ef90"
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
