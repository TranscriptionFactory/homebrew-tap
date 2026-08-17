cask "carbide" do
  version "2.31.0"

  on_arm do
    sha256 "5219d99f08c5238d92d690d612956b25c992699695c23c4476cd9c2e8360db0e"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "173905021d07000f62a2cfea5ff41daeefa135102e4e063ee86b932342716c17"
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
