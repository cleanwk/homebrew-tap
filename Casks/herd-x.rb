cask "herd-x" do
  version "0.1.0"
  sha256 "6beabe2b08edf522462e2e94454a750ad7a2e194cd699c9ee5b0ac8f3f483dee"

  url "https://github.com/cleanwk/herdrX/releases/download/v#{version}/Herd-X-#{version}-universal.zip"
  name "Herd-X"
  desc "Native macOS workspace for Herdr terminals and coding agents"
  homepage "https://github.com/cleanwk/herdrX"

  depends_on macos: :sonoma
  app "Herd-X.app"


  caveats <<~EOS
    Herd-X uses ad-hoc signing and is not notarized by Apple.
    If macOS blocks the first launch, use System Settings > Privacy & Security > Open Anyway.
  EOS

  zap trash: "~/Library/Application Support/Herd-X"
end
