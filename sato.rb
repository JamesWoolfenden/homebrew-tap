# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sato < Formula
  desc "Sato is for converting Cloudformation to Terraform"
  homepage "https://github.com/JamesWoolfenden/sato#readme"
  version "0.1.27"

  on_macos do
    on_intel do
      url "https://github.com/JamesWoolfenden/sato/releases/download/v0.1.27/sato_0.1.27_darwin_amd64.tar.gz"
      sha256 "65fe12c5e3237d4564f9251b2a23bfbdeaf0eef4e4e1f021032783a68bb79c73"

      def install
        bin.install "sato"
      end
    end
    on_arm do
      url "https://github.com/JamesWoolfenden/sato/releases/download/v0.1.27/sato_0.1.27_darwin_arm64.tar.gz"
      sha256 "1909f8bc7e40f641be664690935973c7033773385ba71cf1eba33259f281e39e"

      def install
        bin.install "sato"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/JamesWoolfenden/sato/releases/download/v0.1.27/sato_0.1.27_linux_amd64.tar.gz"
        sha256 "728be05086db475fe71062a81b260ee40d745801ea83f2cbc213f8e0d4a5853c"

        def install
          bin.install "sato"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/JamesWoolfenden/sato/releases/download/v0.1.27/sato_0.1.27_linux_arm64.tar.gz"
        sha256 "77b65ac03303af75a88657582b2072b6643db6f99218ac303c56a43414f2aafd"

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
