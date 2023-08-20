# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghat < Formula
  desc "Ghat is a tool for updating GHA dependencies"
  homepage "https://github.com/JamesWoolfenden/ghat#readme"
  version "0.0.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/ghat/releases/download/v0.0.23/ghat_0.0.23_darwin_arm64.tar.gz"
      sha256 "0d5a49beff45e78e8b3d23f0e8de24c353ee1183571fc236037be53664e9d4aa"

      def install
        bin.install "ghat"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/ghat/releases/download/v0.0.23/ghat_0.0.23_darwin_amd64.tar.gz"
      sha256 "83b6fc6b16a5ddf4a8f2c4f4b5f00162dbb2261699265a6c5c05114dfb87e71b"

      def install
        bin.install "ghat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/ghat/releases/download/v0.0.23/ghat_0.0.23_linux_arm64.tar.gz"
      sha256 "a264b9eca6174369e3db0ca4adeb2235b74830ec3aae9062a9cd879ca1d843be"

      def install
        bin.install "ghat"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/ghat/releases/download/v0.0.23/ghat_0.0.23_linux_amd64.tar.gz"
      sha256 "371c0a8168f2364a1ca77dab5e1a4adc946fe34a76fa8b180991152640d8b9db"

      def install
        bin.install "ghat"
      end
    end
  end

  test do
    system "#{bin}/ghat", "--help"
  end
end
