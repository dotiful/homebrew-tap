cask 'themer-gui' do
  version '0.7.0'
  sha256 '13eb649e5030a10c004f1a058eba9b3ab03d8ffe35a7e177085597d3b4248ef6'

  url "https://github.com/mjswensen/themer-gui/releases/download/v#{version}/Themer-#{version}.dmg"
  appcast 'https://github.com/mjswensen/themer-gui/releases.atom',
          checkpoint: '8c66b4d5a12cd1f82da4ad370444fc76619d8f2980f453ae503b14a73e552c60'
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
