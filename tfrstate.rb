# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfrstate < Formula
  desc "Find directories where changed terraform_remote_state data source is used
"
  homepage "https://github.com/suzuki-shunsuke/tfrstate"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/tfrstate/releases/download/v0.1.4/tfrstate_darwin_amd64.tar.gz"
      sha256 "35cb659d6d90bed4c3a23ede021b3ca8b40b9d3554d5792c48c7495649079c1d"

      def install
        bin.install "tfrstate"
        generate_completions_from_executable(bin/"tfrstate", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/tfrstate/releases/download/v0.1.4/tfrstate_darwin_arm64.tar.gz"
      sha256 "a1d40bee857ddff185d828ffddfcc27b9de2c60f0ac1bdfe35f3f5762caef3d7"

      def install
        bin.install "tfrstate"
        generate_completions_from_executable(bin/"tfrstate", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfrstate/releases/download/v0.1.4/tfrstate_linux_amd64.tar.gz"
        sha256 "3b2b0fc1b858a98d27b16a0b8947601740c3b39f8056d86780ef6244dcb46cf6"

        def install
          bin.install "tfrstate"
          generate_completions_from_executable(bin/"tfrstate", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfrstate/releases/download/v0.1.4/tfrstate_linux_arm64.tar.gz"
        sha256 "3b34b2c0e9a5343816ab2f02393d423cc5396bf005d8afd6548e5dc8d06a5b67"

        def install
          bin.install "tfrstate"
          generate_completions_from_executable(bin/"tfrstate", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
  end

  test do
    system "#{bin}/tfrstate --version"
  end
end
