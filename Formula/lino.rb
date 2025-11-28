class Lino < Formula
  desc "ETL tool to manage test data (Large Input Narrow Output)"
  homepage "https://github.com/CGI-FR/LINO"
  version "3.6.0"
  license "GPL-3.0"

  url "https://github.com/CGI-FR/LINO/releases/download/v3.6.0/LINO_3.6.0_darwin_amd64.tar.gz"
  sha256 "ba50acd3e7fe9140d81b7268072e92a1c65bac32956d92dc40580aeaa8925a5c"

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
