cask 'themer-gui' do
  version '0.6.1'
  sha256 '5f7a457674bef65db3b6a17558c16aff8a56c9dc5a264435d2b34ebd98209a0e'

  url "https://github.com/mjswensen/themer-gui/releases/download/v#{version}/Themer-#{version}.dmg"
  appcast 'https://github.com/mjswensen/themer-gui/releases.atom',
          checkpoint: '4e99881eab877e3036abc9cf9c01c6513490a2692f3e83c6835314e2b98cbffd'
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
