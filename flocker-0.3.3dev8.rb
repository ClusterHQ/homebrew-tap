require "formula"

class Flocker033dev8 < Formula
  homepage "https://clusterhq.com"
  url "https://storage.googleapis.com/archive.clusterhq.com/downloads/flocker/Flocker-0.3.3dev8.tar.gz"
  sha1 "c5ad600541fffdd80f77b9a6a95233dbac2663e2"
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
    url "https://pypi.python.org/packages/source/d/docker-py/docker-py-0.7.1.tar.gz"
    sha1 "6ecb9353954061970764dde46994b3eb936cdd29"
  end

  resource "eliot" do
    url "https://pypi.python.org/packages/source/e/eliot/eliot-0.6.0.tar.gz"
    sha1 "cc2ab19d0725e37ccaf09f8edf3dfc0dce5ad026"
  end

  resource "ipaddr" do
    url "https://pypi.python.org/packages/source/i/ipaddr/ipaddr-2.1.11.tar.gz"
    sha1 "f9a16ddb3cf774b8dcf8894c2f4295c4e17d0ed3"
  end

  resource "jsonschema" do
    url "https://pypi.python.org/packages/source/j/jsonschema/jsonschema-2.4.0.tar.gz"
    sha1 "35d4d90ce942a4b030eda75e9a2b32f97e121a98"
  end

  resource "klein" do
    url "https://pypi.python.org/packages/source/k/klein/klein-0.2.3.tar.gz"
    sha1 "4f994c8d2d484dd02414a5a2569e931b5b8893eb"
  end

  resource "machinist" do
    url "https://pypi.python.org/packages/source/m/machinist/machinist-0.2.0.tar.gz"
    sha1 "63ffaf3d71c5136947ced35a60068e868df4e299"
  end

  resource "netifaces" do
    url "https://pypi.python.org/packages/source/n/netifaces/netifaces-0.10.4.tar.gz"
    sha1 "c3fcd491a89c2994815053e853b005e7fc27c79a"
  end

  resource "psutil" do
    url "https://pypi.python.org/packages/source/p/psutil/psutil-2.1.2.tar.gz"
    sha1 "ca69a2b6041250e9044bc5ee9436e20a8c869f49"
  end

  resource "pyrsistent" do
    url "https://pypi.python.org/packages/source/p/pyrsistent/pyrsistent-0.9.1.tar.gz"
    sha1 "7d49b7bca23931f9d4408f6366a9c9b18c8f6392"
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
    url "https://pypi.python.org/packages/source/r/requests/requests-2.4.3.tar.gz"
    sha1 "411f1bfa44556f7dd0f34cd822047c31baa7d741"
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
    url "https://pypi.python.org/packages/source/T/Twisted/Twisted-15.0.0.tar.bz2"
    sha1 "c72bd9a932d944e2e1c4901f7e1cc79b1214472a"
  end

  resource "websocket-client" do
    url "https://pypi.python.org/packages/source/w/websocket-client/websocket_client-0.26.0.tar.gz"
    sha1 "14f7668f579ab94e1fc7a26ef182add964192b34"
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
    %w[backports.ssl-match-hostname characteristic docker-py eliot ipaddr jsonschema klein machinist netifaces psutil pyrsistent pytz PyYAML requests setuptools six treq Twisted websocket-client Werkzeug zope.interface].each do |r|
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
