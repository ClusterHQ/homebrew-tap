require "formula"

class Flocker032 < Formula
  homepage "https://clusterhq.com"
  url "https://storage.googleapis.com/archive.clusterhq.com/downloads/flocker/Flocker-0.3.2.tar.gz"
  sha1 "7e665cb6eaeff52032a54ab83a5b52bc6051222e"
  depends_on :python if MacOS.version <= :snow_leopard

  resource "backports.ssl-match-hostname" do
    url "https://pypi.python.org/packages/source/b/backports.ssl_match_hostname/backports.ssl_match_hostname-3.4.0.2.tar.gz"
    sha1 "da4e41f3b110279d2382df47ac1e4f10c63cf954"
  end

  resource "characteristic" do
    url "https://pypi.python.org/packages/source/c/characteristic/characteristic-14.3.0.tar.gz"
    sha1 "81e19af03f3cba606e159f1abb47fdff7d2e6e90"
  end

  resource "docker-py" do
    url "https://pypi.python.org/packages/source/d/docker-py/docker-py-0.5.0.tar.gz"
    sha1 "6f7de42b219997da436d6c27791ecbd3928dace4"
  end

  resource "eliot" do
    url "https://pypi.python.org/packages/source/e/eliot/eliot-0.4.0.tar.gz"
    sha1 "e5ee5033fea9c62457eab8393ddbeaec66d7c8fc"
  end

  resource "ipaddr" do
    url "https://ipaddr-py.googlecode.com/files/ipaddr-2.1.10.tar.gz"
    sha1 "c608450b077b19773d4f1b5f1ef88b26f6650ce0"
  end

  resource "jsonschema" do
    url "https://pypi.python.org/packages/source/j/jsonschema/jsonschema-2.4.0.tar.gz"
    sha1 "35d4d90ce942a4b030eda75e9a2b32f97e121a98"
  end

  resource "klein" do
    url "https://pypi.python.org/packages/source/k/klein/klein-0.2.3.tar.gz"
    sha1 "4f994c8d2d484dd02414a5a2569e931b5b8893eb"
  end

  resource "netifaces" do
    url "https://pypi.python.org/packages/source/n/netifaces/netifaces-0.10.4.tar.gz"
    sha1 "c3fcd491a89c2994815053e853b005e7fc27c79a"
  end

  resource "psutil" do
    url "https://pypi.python.org/packages/source/p/psutil/psutil-2.1.2.tar.gz"
    sha1 "ca69a2b6041250e9044bc5ee9436e20a8c869f49"
  end

  resource "pytz" do
    url "https://pypi.python.org/packages/source/p/pytz/pytz-2014.10.tar.bz2"
    sha1 "74a1869c804dd422afbc49cb92206a0ca1529ddc"
  end

  resource "PyYAML" do
    url "https://pypi.python.org/packages/source/P/PyYAML/PyYAML-3.10.tar.gz"
    sha1 "476dcfbcc6f4ebf3c06186229e8e2bd7d7b20e73"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/source/r/requests/requests-2.5.1.tar.gz"
    sha1 "f906c441be2f0e7a834cbf701a72788d3ac3d144"
  end

  resource "setuptools" do
    url "https://pypi.python.org/packages/source/s/setuptools/setuptools-3.6.tar.gz"
    sha1 "745cbb942f8015dbcbfd9df5cb815adb63c7b0e9"
  end

  resource "six" do
    url "https://pypi.python.org/packages/source/s/six/six-1.9.0.tar.gz"
    sha1 "d168e6d01f0900875c6ecebc97da72d0fda31129"
  end

  resource "treq" do
    url "https://pypi.python.org/packages/source/t/treq/treq-0.2.1.tar.gz"
    sha1 "fc19b107d0cd6660f797ec6f82c3a61d5e2a768a"
  end

  resource "Twisted" do
    url "https://pypi.python.org/packages/source/T/Twisted/Twisted-14.0.0.tar.bz2"
    sha1 "a90fae98072f8e28b9459875ce9b77f5524bbc48"
  end

  resource "websocket-client" do
    url "https://pypi.python.org/packages/source/w/websocket-client/websocket-client-0.23.0.tar.gz"
    sha1 "3348c226eb44324417db777e962fec6bda8134b9"
  end

  resource "Werkzeug" do
    url "https://pypi.python.org/packages/source/W/Werkzeug/Werkzeug-0.10.1.tar.gz"
    sha1 "7cbfdd4c298e7fa6cb58e78cfc1712beb92077cd"
  end

  resource "zope.interface" do
    url "https://pypi.python.org/packages/source/z/zope.interface/zope.interface-4.1.2.tar.gz"
    sha1 "6d940ecd621df0437ee9deb17d03ba105c13f07f"
  end

  def install
    ENV.prepend_create_path "PYTHONPATH", "#{libexec}/vendor/lib/python2.7/site-packages"
    %w[backports.ssl-match-hostname characteristic docker-py eliot ipaddr jsonschema klein netifaces psutil pytz PyYAML requests setuptools six treq Twisted websocket-client Werkzeug zope.interface].each do |r|
      resource(r).stage do
        system "python", *Language::Python.setup_install_args(libexec/"vendor")
      end
    end

    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    system "python", *Language::Python.setup_install_args(libexec)

    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end

  test do
    system "#{bin}/flocker-deploy", "--version"
  end
end

