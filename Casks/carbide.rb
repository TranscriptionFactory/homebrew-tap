cask "carbide" do
  version "1.35.0"

  on_arm do
    sha256 "1c2858de29f1a81bad310c4eca11426131ebeee1f19386934ebfe0455d626723"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9bd81824ebafc05e0ff9794e15a96258e186d6595648397474e2ae26677af9c9"
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
