require "formula"

class Vbox < Formula
  desc "A streamlined interface for VBoxManage, the VirtualBox command line tool."
  homepage "https://github.com/alphabetum/vbox"
  url "https://github.com/alphabetum/vbox.git",
    :using => :git,
    :tag => "1.1.1",
    :revision => "05ef3df39eec8962a3604e6b6c8b35d113d0bc7a"

  head "https://github.com/alphabetum/vbox.git"

  def install
    bin.install "vbox"
  end

  test do
    system "#{bin}/vbox"
  end
end
