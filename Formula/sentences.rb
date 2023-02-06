class Sentences < Formula
  desc "A command line sentence tokenizer"
  homepage "https://sentences-231000.appspot.com"
  license "MIT"
  version "1.1.2"

  on_arm do
    url "https://github.com/neurosnap/sentences/releases/download/v1.1.2/sentences_darwin-arm64.tar.gz"
    sha256 "a2d51bd9cc8aacb2fb70c62a4df76a3041cba1d8131d0a536725227b0231e8b2"
  end

  on_intel do
    url "https://github.com/neurosnap/sentences/releases/download/v1.1.2/sentences_darwin-amd64.tar.gz"
    sha256 "b7261dd1b9c4d0a9a747c4eaa5433b9d5cdd0b5e71955c5eb2be48ca6fd2cfc8"
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
