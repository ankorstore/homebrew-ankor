# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/private"
class Ankor < Formula
  desc ""
  homepage "https://github.com/ankorstore/ankorstore-cli"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ankorstore/ankorstore-cli/releases/download/v0.2.0/ankor_darwin_amd64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "92af60246ab1849020a0d70e203faca03626d5e1d6007271324c8a4eb57707d9"

      def install
        bin.install "ankor_darwin_amd64" => "ankor"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ankorstore/ankorstore-cli/releases/download/v0.2.0/ankor_darwin_arm64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "72e75b6750fcae68803339deb440a79cb5dc93fc39eab5d6cfc5f9c06c31ff8e"

      def install
        bin.install "ankor_darwin_arm64" => "ankor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ankorstore/ankorstore-cli/releases/download/v0.2.0/ankor_linux_arm64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a7766b87ffcf369353e3a533af355a97c1bfd228f821db80620d93e55505ff98"

      def install
        bin.install "ankor_linux_arm64" => "ankor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ankorstore/ankorstore-cli/releases/download/v0.2.0/ankor_linux_amd64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "845aad9157eba89b34c712780e18c54a4979fa62708e00319fbf02936c72b48e"

      def install
        bin.install "ankor_linux_amd64" => "ankor"
      end
    end
  end

  depends_on "git"
end
