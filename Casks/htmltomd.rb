cask 'htmltomd' do
  version '1.3'
  sha256 '4087d7a0c1801de4689ffe3d1af8a53888bf607890eb7724f43b374d5d0d807d'

  url 'http://peacockmedia.software/mac/htmltomd/htmltomd.dmg'
  name 'HTMLtoMD'
  homepage 'http://peacockmedia.software/mac/htmltomd/'

  app 'HTMLtoMD.app'

  zap delete: [
                '~/Library/Application Support/HTMLtoMD',
                '~/Library/Caches/com.peacockmedia.HTMLtoMD',
                '~/Library/Cookies/com.peacockmedia.HTMLtoMD.binarycookies',
                '~/Library/Preferences/com.peacockmedia.HTMLtoMD.plist',
              ]
end
