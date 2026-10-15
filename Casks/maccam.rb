cask "maccam" do
  arch arm: "arm64"
  depends_on :macos

  version "1.0.18"
  
  sha256 arm: "adae13fd35e31f80702cada67293113af0f8b7074326779053486efc2cda3992" # shasum -a 256 MacCam.zip
  
  # Assumption: the below URL holds good for all potential versions/revisions of this app
  url "https://github.com/milanrunscode/MacCam/releases/latest/download/MacCam.zip" 
   
  name "maccam"
  desc "MacCam - The camera app for Mac"
  homepage "https://www.maccam.app"

  
  livecheck do
    url :url
    strategy :github_latest
  end

  app "maccam.app" 

  uninstall quit:   "com.milan.Camera", # osascript -e 'id of app "MacCam.app"'
            delete: "/Applications/maccam.app"

zap trash: [
    "~/Library/Caches/com.milan.Camera",
    "~/Library/HTTPStorages/com.milan.Camera",
    "~/Library/Preferences/com.milan.Camera.plist",
    "~/Library/Application Support/com.milan.Camera",
    "~/Library/Application Support/MacCam"
  ]

end
