class SpaceshipZshTheme < Formula
  desc "“Oh My ZSH!” theme for Astronauts."
  homepage "https://github.com/denysdovhan/spaceship-zsh-theme"
  url "https://github.com/denysdovhan/spaceship-zsh-theme/archive/v2.0.0.tar.gz"
  sha256 "9bde1ac25c41cb0e04ebef5a54f7818b686e6f8b848c171db4cdee2bdff5da38"

  bottle :unneeded

  def install
    prefix.install "spaceship.zsh"
    doc.install "README.md"
  end

  def caveats; <<-EOS.undent
    Make sure spaceship.zsh is loaded from your .zshrc:
      source "#{opt_prefix}/spaceship.zsh"
    EOS
  end
end
