cask "graft" do
  version "0.0.2"
  sha256 "52e1412b980355d3b4ee0295e0ef7bb0c1d1400f646d37d6b3dc8dfa1cc93850"

  url "https://github.com/cleanwk/graft/releases/download/v#{version}/Graft_#{version}_aarch64.dmg",
      verified: "github.com/cleanwk/graft/"
  name "Graft"
  desc "Fast, focused Git client with an IDEA-style workflow"
  homepage "https://github.com/cleanwk/graft"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Graft.app"
end
