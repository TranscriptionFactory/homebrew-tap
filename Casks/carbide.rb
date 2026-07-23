cask "carbide" do
  version "2.21.0"

  on_arm do
    sha256 "9330231b55a7d20e6cea585c7d5ae6ca2afe60370fac33e9a5f6aef27bc837b4"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "f46152c158b63397906ac06319b76e7dbe7a9a153ef8f0831c1048e13cda0e90"
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
