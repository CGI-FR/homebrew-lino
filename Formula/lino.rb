class Lino < Formula
  desc "ETL tool to manage test data (Large Input Narrow Output)"
  homepage "https://github.com/CGI-FR/LINO"
  version "3.7.0"
  license "GPL-3.0"

  url "https://github.com/CGI-FR/LINO/releases/download/v3.7.0/LINO_3.7.0_darwin_amd64.tar.gz"
  sha256 "578ace1fc133e86c145b8c5872a91869cb36f30577af6994ab4178648d6ff482"

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
