cask 'typeeto' do
  version '1.4.3'
  sha256 '60410307de761647a47c37283d90db87dd91edeba949179b78e8f55235e0f6ef'

  url 'https://www.eltima.com/download/typeeto.dmg'
  appcast 'https://www.eltima.com/wiki/user-guides/typeeto/whats-new-in-this-version.html',
          checkpoint: 'c43ef97cb664a09ef90d91a7d764561e13587f56eb3d0259daf0e1c687037552'
  name 'Typeeto'
  homepage 'https://www.eltima.com/ru/bluetooth-keyboard.html'

  app 'Typeeto.app'

  zap delete: [
                '~/Library/Application Scripts/com.eltima.tp2',
                '~/Library/Application Scripts/com.eltima.tp2.agent',
                '~/Library/Application Scripts/com.eltima.tp2.kicker',
                '~/Library/Caches/com.eltima.tp2.agent.site',
                '~/Library/Caches/com.eltima.tp2.site',
                '~/Library/Containers/com.eltima.tp2',
                '~/Library/Containers/com.eltima.tp2.agent',
                '~/Library/Containers/com.eltima.tp2.kicker',
              ]
end
