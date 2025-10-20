class Lino < Formula
  desc "ETL tool to manage test data (Large Input Narrow Output)"
  homepage "https://github.com/CGI-FR/LINO"
  version "3.4.0"
  license "GPL-3.0"

  url "https://github.com/CGI-FR/LINO/releases/download/v3.4.0/LINO_3.4.0_darwin_amd64.tar.gz"
  sha256 "0b710cda7ccb60eb602fc497222cebfca3f6f42ad058a054e4a4db4877806c43"

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
