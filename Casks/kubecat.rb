cask "kubecat" do
  version "0.2.2"
  sha256 "2cffcccb9830fd5f445c040887b845ed9783f497f1334244aa19c8f9ec435950"

  url "https://github.com/thepixelabs/homebrew-kubecat/releases/download/v0.2.2/kubecat_v0.2.2_macOS_universal.dmg"
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

