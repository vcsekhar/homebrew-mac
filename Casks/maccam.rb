cask "maccam" do
  arch arm: "arm64"

  version "1.0.0"
  
  sha256 arm: "e79bd78501aef0e39032b1765f8eb7ec50df0141603f6460a849d8872840e77f"
  
  url "https://github.com/milanrunscode/MacCam/releases/latest/download/MacCam.zip"
  
  name "maccam"
  desc "MacCam - The camera app for Mac"
  homepage "https://www.maccam.app"

  container nested: "maccam.dmg"
  
  app "maccam.app" 
end
