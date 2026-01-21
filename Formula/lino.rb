class Lino < Formula
  desc "ETL tool to manage test data (Large Input Narrow Output)"
  homepage "https://github.com/CGI-FR/LINO"
  version "3.6.1"
  license "GPL-3.0"

  url "https://github.com/CGI-FR/LINO/releases/download/v3.6.1/LINO_3.6.1_darwin_amd64.tar.gz"
  sha256 "0f1f0adddb6d48b7a4be2ba7d6b8489515a5a2f84a5b35d13aafa3e219601278"

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
