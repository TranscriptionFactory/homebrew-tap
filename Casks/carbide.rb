cask "carbide" do
  version "2.37.1"

  on_arm do
    sha256 "3eb7444f624cd55c143c3ff63ec0c95f019053ba51bdfef9f7159c47b7b25109"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3652f01db838c93249e566afeaf558c438fbbbf17cfe49674ef1503d1e086825"
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
