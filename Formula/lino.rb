class Lino < Formula
  desc "ETL tool to manage test data (Large Input Narrow Output)"
  homepage "https://github.com/CGI-FR/LINO"
  version "3.6.2"
  license "GPL-3.0"

  url "https://github.com/CGI-FR/LINO/releases/download/v3.6.2/LINO_3.6.2_darwin_amd64.tar.gz"
  sha256 "4be0bf21a2f07adbede13ddd11777a3f7c420d099755401f13650a10483e0ecc"

  def install

    chmod "+x", "lino"
    bin.install "lino"

    generate_completions_from_executable(bin/"lino", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lino --version")
    assert_match "Usage:", shell_output("#{bin}/lino --help")
  end
end
