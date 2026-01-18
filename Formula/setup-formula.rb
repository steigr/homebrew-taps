class SetupFormula < Formula

  url "https://github.com/steigr/homebrew-taps.git", branch: "main"
  homepage "https://github.com/steigr/homebrew-taps"
  version "0.1.8"

  %W[
    antidote
    arduino-cli
    autossh
    azure-cli
    base64
    bash
    bat
    btop
    container
    dfu-util
    dockutil
    dyff
    eim
    ffmpeg
    fzf
    git-flow-next
    glib
    hcloud
    helm
    iproute2mac
    kind
    krew
    kubebuilder
    kubelogin
    kubie
    libdvdcss
    libyaml
    mas
    mise
    oh-my-posh
    pam-reattach
    scw
    skopeo
    stern
    trivy
    uv
    wget
    yq
    zsh
    coreutils
  ].map{|item| depends_on item }

  depends_on "steigr/taps/freerdp" => [:build ]

  resource "setup" do
    url "https://github.com/steigr/dotfiles.git", branch: "main"
  end

  def install
    resource("setup").stage do
      system "bash", "-c",'bin/setup.sh > system-configure'
      bin.install "system-configure"
    end
  end

  def caveats
    <<~EOS
      \033[1;36mNext steps:\033[0m
        • Run \033[1;33msystem-configure\033[0m to complete the setup
        • Restart your shell: \033[1;33mexec $SHELL\033[0m
    EOS
  end
end
