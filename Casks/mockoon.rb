cask 'mockoon' do
  version '0.1.1'
  sha256 '6e67f5b7967be4c1d039cb296ff57ce735819530efcf38634d71044a81fb0f65'

  url "https://releases.mockoon.com/mockoon.setup.#{version}.dmg"
  name 'Mockoon'
  homepage 'https://mockoon.com/'

  app 'Mockoon.app'

  zap delete: [
                '~/Library/Application Support/mockoon',
                '~/Library/Preferences/com.mockoon.app.helper.plist',
                '~/Library/Preferences/com.mockoon.app.plist',
                '~/Library/Saved Application State/com.mockoon.app.savedState',
              ]
end
