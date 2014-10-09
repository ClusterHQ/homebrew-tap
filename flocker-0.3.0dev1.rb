require "formula"

class Flocker030dev1 < Formula
  homepage "https://clusterhq.com"
  url "http://storage.googleapis.com/archive.clusterhq.com/downloads/flocker/Flocker-0.3.0dev1.tar.gz"
  sha1 "227dc898121b46670631c4eeaeb7424f218925c1"
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
