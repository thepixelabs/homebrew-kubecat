cask "kubecat" do
  version "0.2.5"
  sha256 "8c6bd3c0691ade79210841a8aff465ecbe708953cad9c349878f740d391ec185"

  url "https://github.com/thepixelabs/homebrew-kubecat/releases/download/v0.2.5/kubecat_v0.2.5_macOS_universal.dmg"
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

