# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ShopwareCli < Formula
  desc "Shopware CLI helps Shopware developers manage extensions"
  homepage "https://friendsofshopware.com"
  version "0.1.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FriendsOfShopware/shopware-cli/releases/download/0.1.32/shopware-cli_0.1.32_Darwin_arm64.tar.gz"
      sha256 "1d3d14e85f9b09254f9be99ecde3742e51ec1f643cc89a53a58e51bbf3774e5f"

      def install
        bin.install "shopware-cli"
        bash_completion.install "completions/shopware-cli.bash" => "_shopware-cli"
        zsh_completion.install "completions/shopware-cli.zsh" => "_shopware-cli"
        fish_completion.install "completions/shopware-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FriendsOfShopware/shopware-cli/releases/download/0.1.32/shopware-cli_0.1.32_Darwin_x86_64.tar.gz"
      sha256 "6b44507705d37dcd0d08aff25b4b519c2d644d18a6286743459c5a5063a18029"

      def install
        bin.install "shopware-cli"
        bash_completion.install "completions/shopware-cli.bash" => "_shopware-cli"
        zsh_completion.install "completions/shopware-cli.zsh" => "_shopware-cli"
        fish_completion.install "completions/shopware-cli.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FriendsOfShopware/shopware-cli/releases/download/0.1.32/shopware-cli_0.1.32_Linux_arm64.tar.gz"
      sha256 "94d072a130e455e9b9020264a298d8adb0d7593ae0961b3db30c31c0009bfe4d"

      def install
        bin.install "shopware-cli"
        bash_completion.install "completions/shopware-cli.bash" => "_shopware-cli"
        zsh_completion.install "completions/shopware-cli.zsh" => "_shopware-cli"
        fish_completion.install "completions/shopware-cli.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FriendsOfShopware/shopware-cli/releases/download/0.1.32/shopware-cli_0.1.32_Linux_x86_64.tar.gz"
      sha256 "f056d8d9b2cd7c04d6640b72f6501564b12879c5ce3a1abb24f6e28d37d7e9ad"

      def install
        bin.install "shopware-cli"
        bash_completion.install "completions/shopware-cli.bash" => "_shopware-cli"
        zsh_completion.install "completions/shopware-cli.zsh" => "_shopware-cli"
        fish_completion.install "completions/shopware-cli.fish"
      end
    end
  end

  depends_on "git" => :optional
  depends_on "node" => :optional

  test do
    system "#{bin}/shopware-cli --version"
  end
end
