cask "zoomin" do
  version "1.0.6"
  sha256 "40a31267dd8ff362ed5441967af4ebc96449af423e67c4a4acdecf4bdcc44622"

  # github.com/ocastx/ZoomIn/ was verified as official when first introduced to the cask
  url "https://github.com/ocastx/ZoomIn/releases/download/v#{version}/ZoomIn-#{version}.zip"
  appcast "https://github.com/ocastx/ZoomIn/releases.atom"
  name "Zoom In"
  desc "Safari extension for opening Zoom right away"
  homepage "https://zoom-in.app/"

  depends_on macos: ">= :mojave"

  app "ZoomIn.app"

  zap trash: [
    "~/Library/Application Scripts/com.ocastx.zoom-in",
    "~/Library/Containers/com.ocastx.zoom-in",
  ]
end
