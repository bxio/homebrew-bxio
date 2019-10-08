require "language/node"

class ExpressGenerator < Formula
  desc "Express' application generator"
  homepage "https://github.com/expressjs/generator#readme"
  url "https://registry.npmjs.org/express-generator/-/express-generator-4.16.0.tgz"
  sha256 "51cc89db33fae44743d8efe674e6bc0b48b920ae8a58737d03181eedba37f565"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
