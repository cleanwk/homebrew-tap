cask "herdrx" do
  version "0.1.24"
  sha256 "372040a23d00d126af32c8724c1e1c70ff120d18ab3364efb4f32b1d6f29a649"

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
