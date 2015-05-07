require "formula"

class Flocker040 < Formula
  homepage "https://clusterhq.com"
  url "https://clusterhq-archive-testing.s3.amazonaws.com/python/Flocker-0.4.0.tar.gz"
  sha1 "6711fa696057bfa4e410ff5669662c60ea2d033b"
  depends_on :python if MacOS.version <= :snow_leopard

  resource "argparse" do
    url "https://pypi.python.org/packages/source/a/argparse/argparse-1.3.0.tar.gz"
    sha1 "8a8d6c9624669055c2c4f70adcb129139dc50ee6"
  end

  resource "Babel" do
    url "https://pypi.python.org/packages/source/B/Babel/Babel-1.3.tar.gz"
    sha1 "7a43b1ee1539dca0baa37e9cb0706d1ba6631415"
  end

  resource "backports.ssl-match-hostname" do
    url "https://pypi.python.org/packages/source/b/backports.ssl_match_hostname/backports.ssl_match_hostname-3.4.0.2.tar.gz"
    sha1 "da4e41f3b110279d2382df47ac1e4f10c63cf954"
  end

  resource "bitmath" do
    url "https://pypi.python.org/packages/source/b/bitmath/bitmath-1.2.3-4.tar.gz"
    sha1 "a0547ef032050bf2195d37c8f7987735e78fc44f"
  end

  resource "boto" do
    url "https://pypi.python.org/packages/source/b/boto/boto-2.38.0.tar.gz"
    sha1 "fb3ee1fcdc830dd58da3a123cfe217913b7eb23f"
  end

  resource "cffi" do
    url "https://pypi.python.org/packages/source/c/cffi/cffi-0.9.2.tar.gz"
    sha1 "7cfc992699ef8b65d6300c04f3efad00bd2a6cba"
  end

  resource "characteristic" do
    url "https://pypi.python.org/packages/source/c/characteristic/characteristic-14.3.0.tar.gz"
    sha1 "81e19af03f3cba606e159f1abb47fdff7d2e6e90"
  end

  resource "cryptography" do
    url "https://pypi.python.org/packages/source/c/cryptography/cryptography-0.8.2.tar.gz"
    sha1 "b04c2172d34caa40143f620afe414563f5c98c9a"
  end

  resource "docker-py" do
    url "https://pypi.python.org/packages/source/d/docker-py/docker-py-0.7.1.tar.gz"
    sha1 "6ecb9353954061970764dde46994b3eb936cdd29"
  end

  resource "effect" do
    url "https://pypi.python.org/packages/source/e/effect/effect-0.1a13.tar.gz"
    sha1 "8edb977cbcd18bf0998adae30c5225e0df78a9ac"
  end

  resource "eliot" do
    url "https://pypi.python.org/packages/source/e/eliot/eliot-0.7.1.tar.gz"
    sha1 "70a9775b71ce253791fb146ab02c52e62e14d4af"
  end

  resource "enum34" do
    url "https://pypi.python.org/packages/source/e/enum34/enum34-1.0.4.tar.gz"
    sha1 "10b77f1db47e54abbc4ce6f61df542590b9ad972"
  end

  resource "ipaddr" do
    url "https://pypi.python.org/packages/source/i/ipaddr/ipaddr-2.1.11.tar.gz"
    sha1 "f9a16ddb3cf774b8dcf8894c2f4295c4e17d0ed3"
  end

  resource "iso8601" do
    url "https://pypi.python.org/packages/source/i/iso8601/iso8601-0.1.10.tar.gz"
    sha1 "523f48ec579c49c0c1496c094282b684e07d4b36"
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

  resource "msgpack-python" do
    url "https://pypi.python.org/packages/source/m/msgpack-python/msgpack-python-0.4.6.tar.gz"
    sha1 "58652f2bce9660e1d20deda4fd94a1f540319442"
  end

  resource "netaddr" do
    url "https://pypi.python.org/packages/source/n/netaddr/netaddr-0.7.14.tar.gz"
    sha1 "6f72760b0d532d78c67c226069a6a07cde596810"
  end

  resource "netifaces" do
    url "https://pypi.python.org/packages/source/n/netifaces/netifaces-0.10.4.tar.gz"
    sha1 "c3fcd491a89c2994815053e853b005e7fc27c79a"
  end

  resource "oslo.config" do
    url "https://pypi.python.org/packages/source/o/oslo.config/oslo.config-1.11.0.tar.gz"
    sha1 "ce5f1056c0e3147e171bff0c0944dda7c156cabc"
  end

  resource "oslo.i18n" do
    url "https://pypi.python.org/packages/source/o/oslo.i18n/oslo.i18n-1.6.0.tar.gz"
    sha1 "ad2f5a015ced7f338f16b60b4d5d6b6ff5fca18a"
  end

  resource "oslo.serialization" do
    url "https://pypi.python.org/packages/source/o/oslo.serialization/oslo.serialization-1.5.0.tar.gz"
    sha1 "41f4fd9a1c112f1c6ab9e2472132353f5856161d"
  end

  resource "oslo.utils" do
    url "https://pypi.python.org/packages/source/o/oslo.utils/oslo.utils-1.5.0.tar.gz"
    sha1 "16ef23d038ec560b36e395b5d5668b28f3645901"
  end

  resource "pbr" do
    url "https://pypi.python.org/packages/source/p/pbr/pbr-0.11.0.tar.gz"
    sha1 "72801e9ffd52e7f438422a3e08b578e906cd270a"
  end

  resource "pip" do
    url "https://pypi.python.org/packages/source/p/pip/pip-1.4.1.tar.gz"
    sha1 "9766254c7909af6d04739b4a7732cc29e9a48cb0"
  end

  resource "prettytable" do
    url "https://pypi.python.org/packages/source/P/PrettyTable/prettytable-0.7.2.tar.bz2"
    sha1 "b26ece396f071665b0a7c041958a1187ce239fe7"
  end

  resource "psutil" do
    url "https://pypi.python.org/packages/source/p/psutil/psutil-2.1.2.tar.gz"
    sha1 "ca69a2b6041250e9044bc5ee9436e20a8c869f49"
  end

  resource "pyasn1" do
    url "https://pypi.python.org/packages/source/p/pyasn1/pyasn1-0.1.7.tar.gz"
    sha1 "e32b91c5a5d9609fb1d07d8685a884bab22ca6d0"
  end

  resource "pycparser" do
    url "https://pypi.python.org/packages/source/p/pycparser/pycparser-2.12.tar.gz"
    sha1 "e3d3d0134e7e22d73824a32b6f26751892eba0da"
  end

  resource "pycrypto" do
    url "https://pypi.python.org/packages/source/p/pycrypto/pycrypto-2.6.1.tar.gz"
    sha1 "aeda3ed41caf1766409d4efc689b9ca30ad6aeb2"
  end

  resource "pyOpenSSL" do
    url "https://pypi.python.org/packages/source/p/pyOpenSSL/pyOpenSSL-0.14.tar.gz"
    sha1 "eb51f23f29703b647b0f194beaa9b2412c05e0f6"
  end

  resource "pyrsistent" do
    url "https://pypi.python.org/packages/source/p/pyrsistent/pyrsistent-0.9.1.tar.gz"
    sha1 "7d49b7bca23931f9d4408f6366a9c9b18c8f6392"
  end

  resource "python-cinderclient" do
    url "https://pypi.python.org/packages/source/p/python-cinderclient/python-cinderclient-1.1.1.tar.gz"
    sha1 "4c74f4f5f6827e4fe53c19986a570e462445a87b"
  end

  resource "python-keystoneclient" do
    url "https://pypi.python.org/packages/source/p/python-keystoneclient/python-keystoneclient-1.4.0.tar.gz"
    sha1 "cbaf309ab27f1f7d211c9dfdd85f80e7d234e4b4"
  end

  resource "python-keystoneclient-rackspace" do
    url "https://pypi.python.org/packages/source/p/python-keystoneclient-rackspace/python-keystoneclient-rackspace-0.1.3.tar.gz"
    sha1 "39f481d82cf2cc39b5824676bad05711babb0463"
  end

  resource "pytz" do
    url "https://pypi.python.org/packages/source/p/pytz/pytz-2015.2.tar.bz2"
    sha1 "9a1b8bf9b1222f63f7d677f124453d13d7ed27c8"
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

  resource "simplejson" do
    url "https://pypi.python.org/packages/source/s/simplejson/simplejson-3.6.5.tar.gz"
    sha1 "4e3f2557fc8003115cf5d9c388845c03aec83121"
  end

  resource "six" do
    url "https://pypi.python.org/packages/source/s/six/six-1.9.0.tar.gz"
    sha1 "d168e6d01f0900875c6ecebc97da72d0fda31129"
  end

  resource "stevedore" do
    url "https://pypi.python.org/packages/source/s/stevedore/stevedore-1.4.0.tar.gz"
    sha1 "4c00b6fb73346559cdbe96a0072e750cfe3861c2"
  end

  resource "treq" do
    url "https://pypi.python.org/packages/source/t/treq/treq-0.2.1.tar.gz"
    sha1 "fc19b107d0cd6660f797ec6f82c3a61d5e2a768a"
  end

  resource "Twisted" do
    url "https://pypi.python.org/packages/source/T/Twisted/Twisted-15.1.0.tar.bz2"
    sha1 "d41d60ff078c8cb9b063f1846a815cec98dc7693"
  end

  resource "websocket-client" do
    url "https://pypi.python.org/packages/source/w/websocket-client/websocket_client-0.30.0.tar.gz"
    sha1 "d6f855b6cf5e79c24ca9ea8b6d8c74d86fa1dd35"
  end

  resource "Werkzeug" do
    url "https://pypi.python.org/packages/source/W/Werkzeug/Werkzeug-0.10.4.tar.gz"
    sha1 "bde8ef90a905ed52e0920493072d161a354a8fe1"
  end

  resource "zope.interface" do
    url "https://pypi.python.org/packages/source/z/zope.interface/zope.interface-4.1.2.tar.gz"
    sha1 "6d940ecd621df0437ee9deb17d03ba105c13f07f"
  end

  def install
    ENV.prepend_create_path "PYTHONPATH", "#{libexec}/vendor/lib/python2.7/site-packages"
    %w[argparse Babel backports.ssl-match-hostname bitmath boto cffi characteristic cryptography docker-py effect eliot enum34 ipaddr iso8601 jsonschema klein machinist msgpack-python netaddr netifaces oslo.config oslo.i18n oslo.serialization oslo.utils pbr pip prettytable psutil pyasn1 pycparser pycrypto pyOpenSSL pyrsistent python-cinderclient python-keystoneclient python-keystoneclient-rackspace pytz PyYAML requests setuptools simplejson six stevedore treq Twisted websocket-client Werkzeug zope.interface].each do |r|
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
