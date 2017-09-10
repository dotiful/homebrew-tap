cask 'themer' do
  version '0.3.0'
  sha256 '11d90257ea05427b9d57f9fbf3bb741ea46f4d3c95fd0598440314d870d05cdc'

  url 'https://github.com/mjswensen/themer-gui/releases/download/v0.3.0/Themer-0.3.0.dmg'
  appcast 'https://github.com/mjswensen/themer-gui/releases.atom',
          checkpoint: '8c52f25f0cca3f3a2cec2765f0193339961a18cd380529fca6d854a53a18fb7d'
  name 'SSHFS GUI'
  homepage 'https://github.com/mjswensen/themer-gui'

  app 'Themer.app'

  zap delete: [
                '~/Library/Application Support/Themer',
                '~/Library/Preferences/com.mjswensen.themer.helper.plist',
                '~/Library/Preferences/com.mjswensen.themer.plist',
                '~/Library/Saved Application State/com.mjswensen.themer.savedState',
              ]
end
