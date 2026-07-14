cask "carbide" do
  version "2.13.0"

  on_arm do
    sha256 "77a2cbbe3c2306d6f131175c3d66b6d227bd5079696aaa2327b9eb2cbda7d79b"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "97c8fc1b1c191831f63f705d7ce4397103f7e6e8a45b1fe7877c0ecf52f7a783"
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
