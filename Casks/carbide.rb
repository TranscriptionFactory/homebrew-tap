cask "carbide" do
  version "1.17.0"

  on_arm do
    sha256 "864fe01d7d2fa945485c1a681f3e166eb34a62ea0eda4386e699963d99cd419e"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9fbedec0c282cfcc4b3507e2befebf925d28c89a912e6f14296ee27af0871f0e"
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
