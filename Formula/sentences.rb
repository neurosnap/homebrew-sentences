# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sentences < Formula
  desc "A multilingual command line sentence tokenizer"
  homepage "https://sentences-231000.appspot.com/"
  url "https://github.com/neurosnap/sentences/releases/download/v1.0.8/sentences_darwin-amd64.tar.gz"
  sha256 "4a354969b189e4f0738e6e36f1cefae11f98b30467768be8fddc211c86cfd394"
  license "MIT"
  version "1.0.8"

  bottle :unneeded

  def install
      libexec.install Dir["*"]
      bin.install_symlink("#{libexec}/sentences")
  end

  def caveats; <<~EOS
      Executable is linked as "sentences".
      EOS
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test sentences`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "sentences -v"
  end
end
