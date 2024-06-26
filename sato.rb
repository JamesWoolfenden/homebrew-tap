# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sato < Formula
  desc "Sato is for converting Cloudformation to Terraform"
  homepage "https://github.com/JamesWoolfenden/sato#readme"
  version "0.1.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/sato/releases/download/v0.1.16/sato_0.1.16_darwin_amd64.tar.gz"
      sha256 "940f544024150b93a4c2baedb24c179443b2a17e419f2abaa3cbb9cfcf75e032"

      def install
        bin.install "sato"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/sato/releases/download/v0.1.16/sato_0.1.16_darwin_arm64.tar.gz"
      sha256 "f39091eb0b78c8ca00c3ab8a695ea12e7949b4a68e183214cb7e9516bc66040f"

      def install
        bin.install "sato"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/sato/releases/download/v0.1.16/sato_0.1.16_linux_amd64.tar.gz"
      sha256 "de586acd57b42c6134ee480ce3e996f125c650a41477b0fe993a206e55ecf8a6"

      def install
        bin.install "sato"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/JamesWoolfenden/sato/releases/download/v0.1.16/sato_0.1.16_linux_arm64.tar.gz"
      sha256 "c021ed1533efcd49f8958be23e0f66fd35c85026f713b0542aaa30b549a6b563"

      def install
        bin.install "sato"
      end
    end
  end

  test do
    system "#{bin}/sato", "--help"
  end
end
