class Sentences < Formula
  desc "A multilingual command line sentence tokenizer"
  homepage "https://sentences-231000.appspot.com/"
  url "https://github.com/neurosnap/sentences/releases/download/v1.0.12/sentences_linux-amd64.tar.gz"
  sha256 "0594405991d0e88f0e53ce44b91462f3cf23d93fc3b23adbe811e1c79b18bd76"
  license "MIT"
  version "1.0.12"

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
