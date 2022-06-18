class Sentences < Formula
  desc "A multilingual command line sentence tokenizer"
  homepage "https://sentences-231000.appspot.com/"
  url "https://github.com/neurosnap/sentences/releases/download/v1.0.11/sentences_darwin-amd64.tar.gz"
  sha256 "f013a17e76ba37947e0f5413aa9956aaed7f40ef30c5e75809713d2b1636ebcc"
  license "MIT"
  version "1.0.11"

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
