cask "herdrx" do
  version "0.1.25"
  sha256 "8636e08debb16eb4d6391f94ab7b83a1c56ba64fc807a85d3cb5e541f0a44da7"

  url "https://github.com/cleanwk/herdrX/releases/download/v#{version}/HerdrX-#{version}-universal.zip"
  name "HerdrX"
  desc "Native macOS workspace for Herdr terminals and coding agents"
  homepage "https://github.com/cleanwk/herdrX"

  auto_updates true
  depends_on macos: :sonoma
  app "HerdrX.app"


  caveats <<~EOS
    HerdrX uses ad-hoc signing and is not notarized by Apple.
    If macOS blocks the first launch, use System Settings > Privacy & Security > Open Anyway.
  EOS

  zap trash: "~/Library/Application Support/HerdrX"
end
