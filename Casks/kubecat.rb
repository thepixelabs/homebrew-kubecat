cask "kubecat" do
  version "1.0.0"
  sha256 "REPLACE_WITH_SHA256"

  url "https://github.com/thepixelabs/homebrew-kubecat/releases/download/v#{version}/Kubecat.dmg"
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

