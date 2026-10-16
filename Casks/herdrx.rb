cask "herdrx" do
  version "0.1.20"
  sha256 "98079ab88239d9a5645f000f95e5b629567d495492f01e3a34899d0a5bbf2c6a"

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
