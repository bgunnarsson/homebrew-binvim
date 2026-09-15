class Binvim < Formula
  desc "Vim-grammar TUI editor with batteries included"
  homepage "https://github.com/bgunnarsson/binvim"
  url "https://github.com/bgunnarsson/binvim/archive/refs/tags/v0.6.4.tar.gz"
  sha256 "ba2faf2f541feda096b93b6f8062fd47652c676eead2aa0af9eb5cc10a7e6834"
  license :cannot_represent

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install_symlink "binvim" => "bim"
  end

  test do
    assert_predicate bin/"binvim", :executable?
    assert_predicate bin/"bim", :exist?
  end
end
