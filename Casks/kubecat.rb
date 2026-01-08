cask "kubecat" do
  version "1.0.0"
  sha256 "9ffc58af3f034371310616255cdb178867e49865a2fcf0211343271132402138"

  url "https://github.com/thepixelabs/homebrew-kubecat/releases/download/v1.0.0/kubecat_v1.0.0_macOS_universal.dmg"
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

