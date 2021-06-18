class Sentences < Formula
  desc "A multilingual command line sentence tokenizer"
  homepage "https://sentences-231000.appspot.com/"
  url "https://github.com/neurosnap/sentences/releases/download/v1.0.9/sentences_darwin-amd64.tar.gz"
  sha256 "74541e12c0c30ff3ea499419d1bf981462325eaf56fe0c0380e4778b9ab2fc94"
  license "MIT"
  version "1.0.9"

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
