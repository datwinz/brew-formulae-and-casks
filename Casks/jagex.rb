cask "jagex" do
  version "0.32.0"
  sha256 "0015a2e3cca57352cb2ddc5c02c49b0bcc39ddd50e26fd2c506da6bdd00479c2"

  url "https://cdn.jagex.com/Jagex%20Launcher%20Installer.dmg"
  name "Jagex Launcher"
  desc "The new home for Jagex's PC games library."
  homepage "https://www.jagex.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  installer manual: "Jagex Launcher installer.app"

  uninstall delete: "/Applications/Jagex Launcher.app"

  zap trash: [
    "~/Jagex",
    "~/Library/Application Support/Jagex Launcher",
    "~/Library/Preferences/com.jagex.launcher.plist",
  ]

end
