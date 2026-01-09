cask "kubecat" do
  version "0.2.4"
  sha256 "a64833d8e3143e2ca7caa9df6836864eafb703ac5cdb689dbc6f2d6c022f4219"

  url "https://github.com/thepixelabs/homebrew-kubecat/releases/download/v0.2.4/kubecat_v0.2.4_macOS_universal.dmg"
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

