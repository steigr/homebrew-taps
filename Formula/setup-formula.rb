class SetupFormula < Formula

  url "https://github.com/steigr/homebrew-taps.git", branch: "main"
  homepage "https://github.com/steigr/homebrew-taps"
  version "0.1.6"

  depends_on "antidote"
  depends_on "arduino-cli"
  depends_on "autossh"
  depends_on "azure-cli"
  depends_on "base64"
  depends_on "bash"
  depends_on "bat"
  depends_on "btop"
  depends_on "container"
  depends_on "dfu-util"
  depends_on "dockutil"
  depends_on "dyff"
  depends_on "eim"
  depends_on "ffmpeg"
  depends_on "fzf"
  depends_on "git-flow-next"
  depends_on "glib"
  depends_on "hcloud"
  depends_on "helm"
  depends_on "iproute2mac"
  depends_on "kind"
  depends_on "krew"
  depends_on "kubebuilder"
  depends_on "kubelogin"
  depends_on "kubie"
  depends_on "libdvdcss"
  depends_on "libyaml"
  depends_on "mas"
  depends_on "mise"
  depends_on "oh-my-posh"
  depends_on "scw"
  depends_on "skopeo"
  depends_on "stern"
  depends_on "trivy"
  depends_on "uv"
  depends_on "wget"
  depends_on "yq"
  depends_on "zsh"

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
