require "formula"

class Flocker031 < Formula
  homepage "https://clusterhq.com"
  url "http://storage.googleapis.com/archive.clusterhq.com/downloads/flocker/Flocker-0.3.1.tar.gz"
  sha1 "9f4a9d4eda2c191eee6ba4d7e6cd09a42cbf77eb"
  depends_on :python if MacOS.version <= :snow_leopard

  def install
    ENV.prepend_create_path "PYTHONPATH", lib/"python2.7/site-packages"

    system "python", "setup.py", "install",
           "--prefix=#{prefix}",
           "--install-scripts=#{bin}",
           "--install-data=#{libexec}"
    bin.env_script_all_files(libexec+"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end

  test do
    system "#{bin}/flocker-deploy", "--version"
  end
end
