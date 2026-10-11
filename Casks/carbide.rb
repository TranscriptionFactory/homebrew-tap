cask "carbide" do
  version "2.40.0"

  on_arm do
    sha256 "78cfc9c5809537a229c55339400129d1866a3158003be209be714506999e58af"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "45d19da3bc5dbef25dad75de106fe9f2eac13bf963477155e632e610552dc9c1"
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
