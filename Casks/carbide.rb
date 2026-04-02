cask "carbide" do
  version "1.11.0"

  on_arm do
    sha256 "e42b91ee6d86497b064821e2eae8c6d6358074585d316e9c41cc82d976419ddc"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3e9c0f6622b39399deeefbfa07c174d39cd214d37d8b82a41badda5139bfca5f"
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
