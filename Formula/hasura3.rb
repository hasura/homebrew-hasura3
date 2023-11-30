class Hasura3 < Formula
  desc "Hasura V3 CLI"
  homepage "https://hasura.io"
  version "2023.11.30.2"
  url "https://storage.googleapis.com/graphql-engine-cdn.hasura.io/ddn/cli/#{version}/hasura3-#{version}.tar.gz"
  sha256"e12813e9255b359f9b2983eb865e78d86cf23a8789dedc48eca6172a8c45fee5"

  on_macos do
    if Hardware::CPU.intel?
      def install
        bin.install "cli-hasura3-macos-amd64" => "hasura3"
      end
    end
    if Hardware::CPU.arm?
      def install
        bin.install "cli-hasura3-macos-arm64" => "hasura3"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      def install
        bin.install "cli-hasura3-linux-amd64" => "hasura3"
      end
    end
  end

  test do
    system "#{bin}/hasura3 version"
  end
end
