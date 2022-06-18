class Sentences < Formula
  desc "A multilingual command line sentence tokenizer"
  homepage "https://sentences-231000.appspot.com/"
  url "https://github.com/neurosnap/sentences/releases/download/v1.0.10/sentences_darwin-amd64.tar.gz"
  sha256 "12e561c6882d9122b483a3edd415e120a8bf4bcff8384648672ca43a1417545d"
  license "MIT"
  version "1.0.10"

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
