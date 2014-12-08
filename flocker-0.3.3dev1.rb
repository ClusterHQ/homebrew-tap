require "formula"

class Flocker033dev1 < Formula
  homepage "https://clusterhq.com"
  url "http://storage.googleapis.com/archive.clusterhq.com/downloads/flocker/Flocker-0.3.3dev1.tar.gz"
  sha1 "358aa8a9428917ea7ee99243212677342fe4fbae"
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
