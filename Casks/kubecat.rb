cask "kubecat" do
  version "1.0.0"
  sha256 "48001f5503701858fe055e8b4f3b94273c839d42bb810868d6706f3ba450bcb3"

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

