cask "maccam" do
  arch arm: "arm64"
  depends_on :macos

  version "1.0.0"
  
  sha256 arm: "e79bd78501aef0e39032b1765f8eb7ec50df0141603f6460a849d8872840e77f" # shasum -a 256 MacCam.zip
  
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

end
