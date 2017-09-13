cask 'themer-gui' do
  version '0.5.0'
  sha256 '7e1093340d23f58af333af4c27aad3e34b76ddb50c12745670d1a3f823b5fa79'

  url "https://github.com/mjswensen/themer-gui/releases/download/v#{version}/Themer-#{version}.dmg"
  appcast 'https://github.com/mjswensen/themer-gui/releases.atom',
          checkpoint: '670d0c5de523928ba8d7655b51e3a2b1f8b78416f208edcec6d3192a907f9e00'
  name 'Themer'
  homepage 'https://github.com/mjswensen/themer-gui'

  app 'Themer.app'

  zap delete: [
                '~/Library/Application Support/Themer',
                '~/Library/Preferences/com.mjswensen.themer.helper.plist',
                '~/Library/Preferences/com.mjswensen.themer.plist',
                '~/Library/Saved Application State/com.mjswensen.themer.savedState',
              ]
end
