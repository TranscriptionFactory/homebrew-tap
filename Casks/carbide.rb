cask "carbide" do
  version "2.37.0"

  on_arm do
    sha256 "06d2fc0a751e3ef8ecdc1e9400356ffd62468c9b3de474da9801711a3c3e5c48"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "5922ba609c4845704611e1e64d6df9b8ec5971cadfac09e99f2d559b66e3eb94"
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
