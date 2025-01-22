# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sato < Formula
  desc "Sato is for converting Cloudformation to Terraform"
  homepage "https://github.com/JamesWoolfenden/sato#readme"
  version "0.1.32"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JamesWoolfenden/sato/releases/download/v0.1.32/sato_0.1.32_darwin_amd64.tar.gz"
      sha256 "336c30959c6567ea7f4988fff6047e144ec6d61b145ff4b309fa88c52d601263"

      def install
        bin.install "sato"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JamesWoolfenden/sato/releases/download/v0.1.32/sato_0.1.32_darwin_arm64.tar.gz"
      sha256 "0b1aa09b71f36c830986ffd527f49258957ac41890c16678fb688ddee838aa0f"

      def install
        bin.install "sato"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/JamesWoolfenden/sato/releases/download/v0.1.32/sato_0.1.32_linux_amd64.tar.gz"
        sha256 "c60e68d108ad1b6d2df574f312ec5044399ab0e12c65465d3cb96c0fba9dde92"

        def install
          bin.install "sato"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/JamesWoolfenden/sato/releases/download/v0.1.32/sato_0.1.32_linux_arm64.tar.gz"
        sha256 "95d86262d7f9118c42c236c79c308f1b01d19c17fd94c70c3a98cce7786cde0c"

        def install
          bin.install "sato"
        end
      end
    end
  end

  test do
    system "#{bin}/sato", "--help"
  end
end
