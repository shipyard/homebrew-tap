# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc "A tool to manage Ephemeral Environments on the Shipyard platform"
  homepage "https://shipyard.build"
  version "1.8.0"
  license "Apache2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shipyard/shipyard-cli/releases/download/v1.8.0/shipyard-darwin-amd64"
      sha256 "aeac65c2ddd4239bfc7e4fdc8674aa43d917898abb19970ac00cd693bc8e5110"

      def install
        bin.install "shipyard-darwin-amd64" => "shipyard"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shipyard/shipyard-cli/releases/download/v1.8.0/shipyard-darwin-arm64"
      sha256 "d5cad665bc44680766a6a131911836bb7e0ca8a8795df1f4ba45047e4a378bc7"

      def install
        bin.install "shipyard-darwin-arm64" => "shipyard"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shipyard/shipyard-cli/releases/download/v1.8.0/shipyard-linux-amd64"
      sha256 "786797fe9a03b4980ecdd2230534e6bb595ec99d1170cc3d5bb4ce79358b72cd"

      def install
        bin.install "shipyard-linux-amd64" => "shipyard"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shipyard/shipyard-cli/releases/download/v1.8.0/shipyard-linux-arm64"
      sha256 "1c2907e8d97788f6b6908c84f322f2a601916d69eaff0730f796e422ebb4faad"

      def install
        bin.install "shipyard-linux-arm64" => "shipyard"
      end
    end
  end
end
