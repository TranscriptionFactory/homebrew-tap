cask "carbide" do
  version "1.36.0"

  on_arm do
    sha256 "bd3fb96fe52f9e449f18840bd7e2cc6a1a164c41db444f72723449ac1b1a410c"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "f561d8d5be1f7679698385412e6b32208ba99433eb96a17bf4296dcd70263fbb"
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
