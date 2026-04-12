cask "carbide" do
  version "1.19.0"

  on_arm do
    sha256 "d4490722e9f1098f14e67d87205046cf6cdef98e559c17f90faba5573e784580"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "dc49b6de8e7125360b3474db46f9f79342f54182d32c968d1b550eaadedd7fb0"
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
