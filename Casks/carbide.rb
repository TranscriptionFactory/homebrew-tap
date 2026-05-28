cask "carbide" do
  version "1.44.1"

  on_arm do
    sha256 "658c32058253a50bcd71bd39fb80dd6a20eb76a602043957dd9830052c9c7824"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e05b0da9b3fd5629cea5a08e95c816027310dc8ff47e309d149379c2da6f21d8"
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
