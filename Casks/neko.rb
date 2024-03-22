cask "neko" do
  version "1.1"
  sha256 "ed3a93bb988754bc7a5f6af49e5af0b935d6f80190fa2ab1148d7abb9a5f1fd6"

  url "https://github.com/mdonoughe/neko-mac/releases/download/v#{version}/Neko-#{version}.dmg"
  name "Neko"
  desc "Oneko in Cocoa (Neko for Mac OS X)"
  homepage "https://github.com/mdonoughe/neko-mac"

  zap trash: [
    "~/Library/Application Scripts/com.yourcompany.neko",
    "~/Library/Containers/com.yourcompany.neko",
  ]

  caveats do
    <<~EOS
    For neko to work on all desktop spaces, put neko in your dock.
    After that right-click it and assign it to all spaces.
    EOS
  end

end
