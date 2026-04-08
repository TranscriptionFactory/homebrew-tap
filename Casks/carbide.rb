cask "carbide" do
  version "1.16.0"

  on_arm do
    sha256 "be868c76eb66885e14ce380a971abe6471c78963711786b58a32ff63905cbc8f"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "04247931ff83ed1e2ff1a376ef806fb61513ae8ef9284793bd7548741a21735c"
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
