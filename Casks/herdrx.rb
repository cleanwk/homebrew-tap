cask "herdrx" do
  version "0.1.6"
  sha256 "9065a10eff6a71a02160008cf0a23374def068e328b718b4ae11ea04e5adacf0"

  url "https://github.com/cleanwk/herdrX/releases/download/v#{version}/HerdrX-#{version}-universal.zip"
  name "HerdrX"
  desc "Native macOS workspace for Herdr terminals and coding agents"
  homepage "https://github.com/cleanwk/herdrX"

  depends_on macos: :sonoma
  app "HerdrX.app"


  caveats <<~EOS
    HerdrX uses ad-hoc signing and is not notarized by Apple.
    If macOS blocks the first launch, use System Settings > Privacy & Security > Open Anyway.
  EOS

  zap trash: "~/Library/Application Support/HerdrX"
end
