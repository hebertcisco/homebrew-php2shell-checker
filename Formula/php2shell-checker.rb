class Php2shellChecker < Formula
  desc "Static PHP runtime exposure and misconfiguration analyzer"
  homepage "https://github.com/hebertcisco/php2shell_checker"
  url "https://github.com/hebertcisco/php2shell_checker/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "Static PHP runtime exposure and misconfiguration scanner", shell_output("#{bin}/php2shell_checker --help")
    assert_match "version", shell_output("#{bin}/php2shell_checker detectors list")
  end
end
