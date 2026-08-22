cask "carbide" do
  version "2.33.0"

  on_arm do
    sha256 "8776448970ca7c19dca13a54d41e9c927ccd3865c8c10ab3dcdbbef44e713206"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d8bb209fa1998c023da215255612a179534b80f0b6939b810de46f2fd0bbca77"
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
