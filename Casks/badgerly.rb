cask "badgerly" do
  version "1.1.0"

  on_arm do
    sha256 "f446fed081326d139e5461a06c19cc2908f26eb8783156963dd8b7831af9eedc"
    url "https://github.com/TranscriptionFactory/badgerly/releases/download/v#{version}/badgerly_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "c216625aba8fefe0e64d40a17fd318c154e2d29de4721194d27c939586759a70"
    url "https://github.com/TranscriptionFactory/badgerly/releases/download/v#{version}/badgerly_#{version}_x64.dmg"
  end

  name "Badgerly"
  desc "Badgerly"
  homepage "https://github.com/TranscriptionFactory/badgerly"

  app "Badgerly.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
