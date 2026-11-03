class Lino < Formula
  desc "ETL tool to manage test data (Large Input Narrow Output)"
  homepage "https://github.com/CGI-FR/LINO"
  version "3.8.0"
  license "GPL-3.0"

  url "https://github.com/CGI-FR/LINO/releases/download/v3.8.0/LINO_3.8.0_darwin_amd64.tar.gz"
  sha256 "a573c9439811c3d965a3e94ac16fe5305c4f970672224cc9fc983c16b053e9bc"

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
