# Written by NetScanTW's release script (tools/release-homebrew.sh); edit the template there.
cask "netscantw" do
  version "1.1"
  sha256 "0d5e230b2e40da8a6f50f7772bee465b91d95694b846e3c490ecd702f196d923"

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
