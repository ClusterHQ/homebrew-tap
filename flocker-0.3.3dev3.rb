require "formula"

class Flocker033dev3 < Formula
  homepage "https://clusterhq.com"
  url "http://storage.googleapis.com/archive.clusterhq.com/downloads/flocker/Flocker-0.3.3dev3.tar.gz"
  sha1 "558d3e681fe478c471a9df9b638a07aa20108f96"
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
