cask 'themer-gui' do
  version '0.4.0'
  sha256 'e8c8a4607782c116f5321e73be4498509d8d8232da708a0e5b8fac087ae62549'

  url "https://github.com/mjswensen/themer-gui/releases/download/v#{version}/Themer-#{version}.dmg"
  appcast 'https://github.com/mjswensen/themer-gui/releases.atom',
          checkpoint: 'e5b451b7a63ee7ed0e9eacb6a89bfec864950f570a41e4ea2724dfb2a6f9f8a6'
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
