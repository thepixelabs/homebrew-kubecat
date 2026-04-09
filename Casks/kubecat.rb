cask "kubecat" do
  version "0.3.0"
  sha256 "132b28c535d2696636d9de563c43e83d4410b1edeba353d88e95debef7a5ea5a"

  url "https://github.com/thepixelabs/homebrew-kubecat/releases/download/v0.3.0/kubecat_v0.3.0_macOS_universal.dmg"
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

