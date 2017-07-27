class SpaceshipZshTheme < Formula
  desc "Oh My ZSH!” theme for Astronauts."
  homepage "https://github.com/denysdovhan/spaceship-zsh-theme"
  url "https://github.com/denysdovhan/spaceship-zsh-theme/archive/v2.7.2.tar.gz"
  sha256 "df4421a65f665c9d34a1c0f9c75c512c8f57b9a46d13b134b9f12bd94d0a9efa"

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
