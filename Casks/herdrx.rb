cask "herdrx" do
  version "0.1.14"
  sha256 "9b7874bb53a978ecf485097161e4abcf7601a8c86ea262708e7f06048050050b"

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
