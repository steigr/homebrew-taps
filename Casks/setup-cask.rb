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
    jordanbaird-ice
    loopback
    rapidapi
    transmit
    audio-hijack
    fluor
    iterm2
    lunar
    slack
    dash
    font-victor-mono-nerd-font
    jetbrains-toolbox
    wireshark-app
    docker-desktop
    handbrake-app
    kaleidoscope
    tailscale-app
    openzfs
    zen

    obs

    vscodium
    microsoft-azure-storage-explorer
    microsoft-excel
    microsoft-word
    microsoft-powerpoint

  ].map{|cask| depends_on :cask => cask }
end
