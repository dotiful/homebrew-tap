
cask 'themer-gui' do
  version '0.6.0'
  sha256 'e37dad677126af1e0b28f398742d366411cfba6deac4536996a5decbabd2fabd'

  url "https://github.com/mjswensen/themer-gui/releases/download/v#{version}/Themer-#{version}.dmg"
  appcast 'https://github.com/mjswensen/themer-gui/releases.atom',
          checkpoint: '61b5c3eb139bcfae74166751f321efa9963880c35b1dd869c8848a294318d246'
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
