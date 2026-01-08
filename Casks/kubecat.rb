cask "kubecat" do
  version "1.1.1"
  sha256 "d8d5e8603c8f9caf805a97ab1c515816123711b0353cbe3a93341ecfcd4f9bad"

  url "https://github.com/thepixelabs/homebrew-kubecat/releases/download/v1.1.1/kubecat_v1.1.1_macOS_universal.dmg"
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

