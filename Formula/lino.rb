class Lino < Formula
  desc "ETL tool to manage test data (Large Input Narrow Output)"
  homepage "https://github.com/CGI-FR/LINO"
  version "3.5.0"
  license "GPL-3.0"

  url "https://github.com/CGI-FR/LINO/releases/download/v3.5.0/LINO_3.5.0_darwin_amd64.tar.gz"
  sha256 "fddb0dfea312127a7bdfcece634eeced2eb050ece1c000b80796480ffc265673"

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
