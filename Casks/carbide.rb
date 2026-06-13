cask "carbide" do
  version "2.3.1"

  on_arm do
    sha256 "79332854c729f2fc8c51e57e41fd71655ce5b10d4bef924c77fe768c501d1f4f"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "5141b433eb218ddb39648a3c5b3775fbd11a92ce78c4d9f6aa8497055a1a0573"
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
