class AndroidCompletion < Formula
  desc "Bash completion script for the android, adb, emulator, fastboot and repo command-line tools from the Google Android SDK."
  homepage "https://github.com/mbrubeck/android-completion"
  url "https://github.com/mbrubeck/android-completion/archive/master.zip"
  version "1.0"
  sha256 "52657b4a515b43a384780d44692959d60bf4e6db80c9aab01925070a395d55e0"

  head "https://github.com/mbrubeck/android-completion.git"

  bottle :unneeded

  def install
    bash_completion.install "android" => "android"
    bash_completion.install "repo" => "repo"
  end

  test do
    assert_match "-F _android",
      shell_output("source #{bash_completion}/android && complete -p android")
  end
end
