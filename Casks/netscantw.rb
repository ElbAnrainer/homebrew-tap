# Written by NetScanTW's release script (tools/release-homebrew.sh); edit the template there.
cask "netscantw" do
  version "1.1"
  sha256 "a64e01d8c6d7578e46c3b76b01a59379355594eb38ffd639f3a742774c2f8829"

  url "https://github.com/ElbAnrainer/homebrew-tap/releases/download/v#{version}/NetScanTW-#{version}.zip"
  name "NetScanTW"
  desc "Scan and check the local network, with a command-line tool"
  homepage "https://elbanrainer.github.io/netscantw-site/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "NetScanTW.app"
  binary "#{appdir}/NetScanTW.app/Contents/MacOS/NetScanTW", target: "netscan"
  manpage "netscan.1"
  zsh_completion "_netscan"

  zap trash: [
    "~/Library/Application Support/Bama",
    "~/Library/Preferences/com.thorsten.bama.plist",
  ]

  caveats <<~EOS
    The App Store edition of NetScanTW is a separate app with its own data.
    Install only one of them in /Applications.
  EOS
end
