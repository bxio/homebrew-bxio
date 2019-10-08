require "language/node"

class VueCli < Formula
  desc "Simple CLI for scaffolding Vue.js projects"
  homepage "https://github.com/vuejs/vue-cli#readme"
  url "https://registry.npmjs.org/@vue/cli/-/cli-3.4.1.tgz"
  sha256 "eeb86e972f993fe8bc21c685ad5727cb9bae7b74866b9a4702ae5f59a6bb12b0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
