class Binvim < Formula
  desc "Vim-grammar TUI editor with batteries included"
  homepage "https://github.com/bgunnarsson/binvim"
  url "https://github.com/bgunnarsson/binvim/archive/refs/tags/v0.6.2.tar.gz"
  sha256 "62ab51322cd4d60527b44271da8c8c1d03652debf3d71d179ed7e7e620de3b22"
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
