require "formula"

class Flocker < Formula
  homepage "https://clusterhq.com"

  # Installed by default.
  stable do
    url "https://storage.googleapis.com/archive.clusterhq.com/downloads/flocker/Flocker-0.1.0.tar.gz"
    sha1 "59f61aa85b44981fc3ea8ddb132628b9ee27d02e"
  end

  # Installed with ``brew install --devel``
  # Put weekly releases here.
  devel do
    url "https://storage.googleapis.com/archive.clusterhq.com/downloads/flocker/Flocker-0.1.1.tar.gz"
    sha1 "fefe853683c717660d7437fa78ab85b032875c38"
  end

  # Installed with ``brew install --head``
  # Installs the master branch directly from GitHub.
  head do
    url "https://github.com/ClusterHQ/flocker.git"
  end

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
