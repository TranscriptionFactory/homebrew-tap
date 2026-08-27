cask "carbide" do
  version "2.34.4"

  on_arm do
    sha256 "d3d6199b97cfe752d1a1bfb2083c6fca53254affa2facc64a588f2bbab657566"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d96629a3dd5f82d28465f919e06cb0ff69f439ee5149cffeaab65fc2e38f9e2c"
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
