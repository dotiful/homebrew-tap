cask 'shortcutdetective' do
  version '1.0'
  sha256 '4b8ef6319baa51369dad48fe03973e1135a96e5b62c0a7c7b55cd2daabe38065'

  url 'http://www.irradiatedsoftware.com/downloads/ShortcutDetective.zip'
  appcast 'http://www.irradiatedsoftware.com/updates/profiles/profile.php',
          checkpoint: '0cd193099702c281bb723c8658b8022f8aa742c643edd96208ec0229c503548d'
  name 'ShortcutDetective'
  homepage 'http://www.irradiatedsoftware.com/'

  accessibility_access true

  app 'ShortcutDetective.app'

  zap delete: '~/Library/Preferences/com.irradiatedsoftware.ShortcutDetective.plist'
end
