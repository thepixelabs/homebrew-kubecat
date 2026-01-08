cask "kubecat" do
  version "1.0.0"
  sha256 "172c9cec0001e9b6f6babcfbdde62b996a423ba8f0852cc2225b37b407bf2f2c"

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

