cask "setup-cask" do

  url "https://github.com/steigr/homebrew-taps.git", branch: "main"
  homepage "https://github.com/steigr/homebrew-taps"

  version :latest
  sha256 :no_check

  %W[
    alfred
    fantastical
    hazel
    little-snitch
    prismlauncher
    tower
    arduino-ide
    finicky
    hiddenbar
    loopback
    rapidapi
    transmit
    audio-hijack
    fluor
    iterm2
    lunar
    slack
    vscodium
    dash
    font-victor-mono-nerd-font
    jetbrains-toolbox
    microsoft-azure-storage-explorer
    wireshark-app
    docker-desktop
    handbrake-app
    kaleidoscope
    openzfs
    zen
    obs
    obsbot-center
  ].map{|cask| depends_on :cask => cask }

  # def install
  #   system "bash", "-c", "touch INSTALL"
  #   prefix.install "INSTALL"
  # end
end