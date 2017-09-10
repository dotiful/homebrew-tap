cask 'sshfs-gui' do
  version '1.3.1'
  sha256 '45475db428e2bfa30788996ebe330fa9ac02e6cb945dcdb564b4497218efc246'

  url 'https://github.com/dstuecken/sshfs-gui/raw/develop/Installer/sshfs-gui-1.3.1.dmg'
  appcast 'https://github.com/dstuecken/sshfs-gui/releases.atom',
          checkpoint: '2431e3a3aa6f701201f1728f4b30e01eef068febebb3353022fc6fafda8ee101'
  name 'SSHFS GUI'
  homepage 'https://github.com/dstuecken/sshfs-gui'

  app 'SSHFS GUI.app'

  zap delete: [
                '~/Library/Preferences/org.dstuecken.SSHFS-GUI.plist',
                '~/Library/Saved Application State/org.dstuecken.SSHFS-GUI.savedState',
              ]
end
