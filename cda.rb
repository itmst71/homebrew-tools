require "formula"

class Cda < Formula
  desc "cd with an alias name"
  homepage "https://github.com/itmst71/cda"
  url "https://github.com/itmst71/cda.git", :tag => "v1.1.0"
  head "https://github.com/itmst71/cda.git", :branch => "master"
  version "1.1.0"

  def install
    prefix.install Dir['*']
  end

  def caveats
    msg = <<-EOF.undent
    Add the following line to your ~/.bashrc or ~/.zshrc file (and remember to source the file to update your current session):

      [[ -f "$(brew --prefix cda)/cda.sh" ]] && . "$(brew --prefix cda)/cda.sh"
    EOF
  end
end
