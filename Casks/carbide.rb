cask "carbide" do
  version "2.5.1"

  on_arm do
    sha256 "2c4d85ebb068e6ef6a13b5b2ccf06b623ad862afaa18482430d05f2c60ec2c29"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "71ffd96f4058c4305f4eed01be31a36ac72fe0338400892ad47ff50b17a2b42f"
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
