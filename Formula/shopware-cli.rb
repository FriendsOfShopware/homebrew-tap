# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ShopwareCli < Formula
  desc "Shopware CLI helps Shopware developers manage extensions"
  homepage "https://friendsofshopware.com"
  version "0.4.62"
  license "MIT"

  depends_on "git" => :optional
  depends_on "node" => :optional
  depends_on "node-sass"

  on_macos do
    on_intel do
      url "https://github.com/FriendsOfShopware/shopware-cli/releases/download/0.4.62/shopware-cli_Darwin_x86_64.tar.gz"
      sha256 "1596a53c97d534fcfae9521edff15ab1b88aaf78c849e697df9b25d0483e71fd"

      def install
        bin.install "shopware-cli"
        bash_completion.install "completions/shopware-cli.bash" => "_shopware-cli"
        zsh_completion.install "completions/shopware-cli.zsh" => "_shopware-cli"
        fish_completion.install "completions/shopware-cli.fish"
      end
    end
    on_arm do
      url "https://github.com/FriendsOfShopware/shopware-cli/releases/download/0.4.62/shopware-cli_Darwin_arm64.tar.gz"
      sha256 "6e0dbffe72737c3b5c7da68b24241132d79339fbe4d0b1a7074f53eeea657fe4"

      def install
        bin.install "shopware-cli"
        bash_completion.install "completions/shopware-cli.bash" => "_shopware-cli"
        zsh_completion.install "completions/shopware-cli.zsh" => "_shopware-cli"
        fish_completion.install "completions/shopware-cli.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FriendsOfShopware/shopware-cli/releases/download/0.4.62/shopware-cli_Linux_x86_64.tar.gz"
        sha256 "77a55aa0cf86e083fc2aeeb5b1d3a0fc7948c614d467cdecba3bcb571bee0bf2"

        def install
          bin.install "shopware-cli"
          bash_completion.install "completions/shopware-cli.bash" => "_shopware-cli"
          zsh_completion.install "completions/shopware-cli.zsh" => "_shopware-cli"
          fish_completion.install "completions/shopware-cli.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FriendsOfShopware/shopware-cli/releases/download/0.4.62/shopware-cli_Linux_arm64.tar.gz"
        sha256 "33637794d10f0d62274db3d83bcecab0c173322e6d94d47e93e18f7f478374e9"

        def install
          bin.install "shopware-cli"
          bash_completion.install "completions/shopware-cli.bash" => "_shopware-cli"
          zsh_completion.install "completions/shopware-cli.zsh" => "_shopware-cli"
          fish_completion.install "completions/shopware-cli.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/shopware-cli --version"
  end
end
