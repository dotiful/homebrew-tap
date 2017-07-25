cask 'safari-beta' do
  version '11,beta_3'
  sha256 'ff202bb9f5247e416551173132fc54b66e1a40878798b877fd326d839d94bfc6'

  url "https://download.developer.apple.com/Safari/Safari_#{version.before_comma}_for_macOS_Sierra_and_OS_X_El_Capitan_#{version.after_comma}/Safari_#{version.before_comma}_for_macOS_Sierra_#{version.after_comma}.dmg"
  name 'Safari'
  homepage 'https://developer.apple.com/safari/download/'

  pkg 'Safari11.0Sierra.pkg'
end
