# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghat < Formula
  desc "Ghat is a tool for updating GHA dependencies"
  homepage "https://github.com/JamesWoolfenden/ghat#readme"
  version "0.0.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/ghat/releases/download/v0.0.11/ghat_0.0.11_darwin_arm64.tar.gz"
      sha256 "4725f50b77c7c80485bb0c9eb7a3e07cbbd2866dc28acc5b3c3d3140b203fde0"

      def install
        bin.install "ghat"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/ghat/releases/download/v0.0.11/ghat_0.0.11_darwin_amd64.tar.gz"
      sha256 "cb75ff5d1ad51b48feb0d5c22e0e94ceafb2fa544e1e3ace7ac53d9d8877671e"

      def install
        bin.install "ghat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/ghat/releases/download/v0.0.11/ghat_0.0.11_linux_amd64.tar.gz"
      sha256 "8b324483ae19e710ccc3815d71a8266b45d6844803fd9a9654725cdbfe1657cd"

      def install
        bin.install "ghat"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/ghat/releases/download/v0.0.11/ghat_0.0.11_linux_arm64.tar.gz"
      sha256 "54b5dd4051dcde622b98a5e2a16465367ac68a6505f9851553170d3179413d98"

      def install
        bin.install "ghat"
      end
    end
  end

  test do
    system "#{bin}/ghat", "--help"
  end
end
