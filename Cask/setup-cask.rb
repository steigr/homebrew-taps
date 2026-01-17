cask "setup-cask" do

  url "https://github.com/steigr/homebrew-taps.git", branch: "main"
  homepage "https://github.com/steigr/homebrew-taps"

  version :latest
  sha256 :no_check

  depends_on :cask => "alfred"
  depends_on :cask => "fantastical"
  depends_on :cask => "hazel"
  depends_on :cask => "little-snitch"
  depends_on :cask => "prismlauncher"
  depends_on :cask => "tower"
  depends_on :cask => "arduino-ide"
  depends_on :cask => "finicky"
  depends_on :cask => "hiddenbar"
  depends_on :cask => "loopback"
  depends_on :cask => "rapidapi"
  depends_on :cask => "transmit"
  depends_on :cask => "audio-hijack"
  depends_on :cask => "fluor"
  depends_on :cask => "iterm2"
  depends_on :cask => "lunar"
  depends_on :cask => "slack"
  depends_on :cask => "vscodium"
  depends_on :cask => "dash"
  depends_on :cask => "font-victor-mono-nerd-font"
  depends_on :cask => "jetbrains-toolbox"
  depends_on :cask => "microsoft-azure-storage-explorer"
  depends_on :cask => "wireshark-app"
  depends_on :cask => "docker-desktop"
  depends_on :cask => "handbrake-app"
  depends_on :cask => "kaleidoscope"
  depends_on :cask => "openzfs"
  depends_on :cask => "zen"

  def install
    system "bash", "-c", "touch INSTALL"
    prefix.install "INSTALL"
  end
end