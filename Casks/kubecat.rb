cask "kubecat" do
  version "0.2.1"
  sha256 "13ddf25759a417819c366c003bfeeb61bd403ea6c23087cdd8579c46e781b413"

  url "https://github.com/thepixelabs/homebrew-kubecat/releases/download/v0.2.1/kubecat_v0.2.1_macOS_universal.dmg"
  name "Kubecat"
  desc "Incident-first Kubernetes desktop app with AI-powered operations"
  homepage "https://loquacious-pegasus-544122.netlify.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Kubecat.app"

  zap trash: [
    "~/Library/Application Support/kubecat",
    "~/Library/Caches/kubecat",
    "~/Library/Preferences/com.kubecat.plist",
    "~/Library/Saved Application State/com.kubecat.savedState",
  ]
end

