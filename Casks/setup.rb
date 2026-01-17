cask "setup" do
  url "https://github.com/steigr/homebrew-taps.git", branch: "main"
  homepage "https://github.com/steigr/homebrew-taps"

  version :latest
  sha256 :no_check

  depends_on :formula => "steigr/setup-formula"
  depends_on :cask    => "steigr/setup-cask"

  def install
    system "bash", "-c", "touch INSTALL"
    prefix.install "INSTALL"
  end
end