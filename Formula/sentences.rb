class Sentences < Formula
  desc "A command line sentence tokenizer"
  homepage "https://sentences-231000.appspot.com"
  license "MIT"
  version "1.1.1"

  on_arm do
    url "https://github.com/neurosnap/sentences/releases/download/v1.1.1/sentences_darwin-arm64.tar.gz"
    sha256 "078762aa6a92e4fca013c8163e65ebd7f6cde6425a617df5accc57c777abe76b"
  end

  on_intel do
    url "https://github.com/neurosnap/sentences/releases/download/v1.1.1/sentences_darwin-amd64.tar.gz"
    sha256 "5ffa6695e70510b97d7c6f84672039b7d797957ab0e663ce68605fc1a2c94531"
  end

  def install
      libexec.install Dir["*"]
      bin.install_symlink("#{libexec}/sentences")
  end

  def caveats; <<~EOS
      Executable is linked as "sentences".
      EOS
  end

  test do
    system "sentences -v"
  end
end
