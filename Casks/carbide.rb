cask "carbide" do
  version "2.17.0"

  on_arm do
    sha256 "b4375e5a85520ffac7f679ee377a3419d7af6597ac62dd8e2d7ce904c3cacad4"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "dd8f148f1feefddec083161efe95c96dcd78076cb7b8e473f85f19611de33eb8"
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
