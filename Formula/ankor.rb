# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/private"
class Ankor < Formula
  desc ""
  homepage "https://github.com/ankorstore/ankorstore-cli"
  version "0.1.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ankorstore/ankorstore-cli/releases/download/v0.1.13/ankor_darwin_arm64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7cb664ade9842c92c3efb93ccbbc3341e928d874d41dbeec31fb9f8d4e711872"

      def install
        bin.install "ankor_darwin_arm64" => "ankor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ankorstore/ankorstore-cli/releases/download/v0.1.13/ankor_darwin_amd64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "1787e04da8a35dc0304d4e300e494f761a8669d26255ea7b55755817b008f767"

      def install
        bin.install "ankor_darwin_amd64" => "ankor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ankorstore/ankorstore-cli/releases/download/v0.1.13/ankor_linux_arm64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b722eeaeae9bc6fdf317a4d780a00a58d083d29e505ad49ade6438d890e54c1a"

      def install
        bin.install "ankor_linux_arm64" => "ankor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ankorstore/ankorstore-cli/releases/download/v0.1.13/ankor_linux_amd64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "366c6d39cee44aa4ae276fd5c0fadfd16a94c2c452b0a073aec1d05bfbd0dddd"

      def install
        bin.install "ankor_linux_amd64" => "ankor"
      end
    end
  end

  depends_on "git"
end
