cask "carbide" do
  version "1.24.0"

  on_arm do
    sha256 "d10be5fc805414e561002b527cdaf50602cd7cff346e196d1bd62c7ef183f836"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "5d7d5c4f2bf0bbfaaa9134b47fc48ef5e558b32e510d49d1dcb626e50924d85d"
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
