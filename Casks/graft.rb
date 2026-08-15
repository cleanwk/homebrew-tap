cask "graft" do
  version "0.0.1"
  sha256 "2dd73ccf9dc11ea57b3d41574b151ed7a13fdfa627297a0096e20544df3564a3"

  url "https://github.com/cleanwk/graft/releases/download/v#{version}/Graft_#{version}_aarch64.dmg",
      verified: "github.com/cleanwk/graft/"
  name "Graft"
  desc "Fast, focused Git client with an IDEA-style workflow"
  homepage "https://github.com/cleanwk/graft"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Graft.app"
end
