cask "carbide" do
  version "2.37.2"

  on_arm do
    sha256 "0bba07277bd7f4d02905484b5c7fc0648b497380b59180fdab87cc463551de77"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "eaecf868af2313dc366c754f2fafcf2ef1245aebde3ac82cf1f7b31aa1d0ada5"
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
