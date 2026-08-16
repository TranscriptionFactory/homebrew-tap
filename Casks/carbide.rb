cask "carbide" do
  version "2.30.2"

  on_arm do
    sha256 "f9aab91eebc58a0c2cfb9f244ccd74da37d3144ba5e6490aee133e28c65464ca"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "cb4ae3a68d46a747801376f4a86a3cd8e6df9413ea962d746d31be42ee4c2e2f"
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
