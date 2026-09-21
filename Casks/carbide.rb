cask "carbide" do
  version "2.38.2"

  on_arm do
    sha256 "80b3510f1bda60557edc3b8c1fc9190aec82b40cb62c84dfa3fa7a927552989f"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "5c8701fde74f2f8961580b4511847af0e21540fcf81b9fe1686a3a8e21c317fc"
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
