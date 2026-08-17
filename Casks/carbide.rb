cask "carbide" do
  version "2.31.1"

  on_arm do
    sha256 "dabbff524e6f70a268ae011f0e09bb19fa5fd561dd04559d291235f20158284a"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "5b0ad7a3ff8e9addc20b108879ecd89d142b138fda88eabc7ebf812dfbcc78d0"
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
