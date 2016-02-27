require "formula"

class Flocker1103Dev2 < Formula
  homepage "https://clusterhq.com"
  url "https://clusterhq-archive.s3.amazonaws.com/python/Flocker-1.10.3.dev2.tar.gz"
  sha1 "e543ad4a61069e472bff4b80f427a4e95abf2b37"
  depends_on :python if MacOS.version <= :snow_leopard
  depends_on "openssl"

  resource "Babel" do
    url "https://pypi.python.org/packages/source/B/Babel/Babel-1.3.tar.gz"
    sha1 "7a43b1ee1539dca0baa37e9cb0706d1ba6631415"
  end

  resource "PyYAML" do
    url "https://pypi.python.org/packages/source/P/PyYAML/PyYAML-3.10.tar.gz"
    sha1 "476dcfbcc6f4ebf3c06186229e8e2bd7d7b20e73"
  end

  resource "Twisted" do
    url "https://pypi.python.org/packages/source/T/Twisted/Twisted-15.5.0.tar.bz2"
    sha1 "c7db4b949fc27794ca94677f66082f49be43f283"
  end

  resource "Werkzeug" do
    url "https://pypi.python.org/packages/source/W/Werkzeug/Werkzeug-0.10.4.tar.gz"
    sha1 "bde8ef90a905ed52e0920493072d161a354a8fe1"
  end

  resource "argparse" do
    url "https://pypi.python.org/packages/source/a/argparse/argparse-1.3.0.tar.gz"
    sha1 "8a8d6c9624669055c2c4f70adcb129139dc50ee6"
  end

  resource "attrs" do
    url "https://pypi.python.org/packages/source/a/attrs/attrs-15.1.0.tar.gz"
    sha1 "b9c8b5053fa6bb81e067ed630d54566c9bd04ea3"
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

  resource "boto3" do
    url "https://pypi.python.org/packages/source/b/boto3/boto3-1.2.2.tar.gz"
    sha1 "de98f530338ad81d173c5f6d10263d95e7deda8b"
  end

  resource "botocore" do
    url "https://pypi.python.org/packages/source/b/botocore/botocore-1.3.17.tar.gz"
    sha1 "ddf8c9ffe776c8dc84a5b695def24738162619c7"
  end

  resource "cffi" do
    url "https://pypi.python.org/packages/source/c/cffi/cffi-1.1.2.tar.gz"
    sha1 "6d6203bf7d390560ac50943da4a3d2c96ab29756"
  end

  resource "characteristic" do
    url "https://pypi.python.org/packages/source/c/characteristic/characteristic-14.3.0.tar.gz"
    sha1 "81e19af03f3cba606e159f1abb47fdff7d2e6e90"
  end

  resource "cryptography" do
    url "https://pypi.python.org/packages/source/c/cryptography/cryptography-1.1.2.tar.gz"
    sha1 "7ce01ed984c580ed0d967ca6623f274d806e3fd1"
  end

  resource "debtcollector" do
    url "https://pypi.python.org/packages/source/d/debtcollector/debtcollector-0.5.0.tar.gz"
    sha1 "05c6f907397434ecea904de0f9c7dff9d677cbfc"
  end

  resource "docker-py" do
    url "https://pypi.python.org/packages/source/d/docker-py/docker-py-1.6.0.tar.gz"
    sha1 "71b4281dc26131fb125c075cc49afcab6564a6bc"
  end

  resource "docutils" do
    url "https://pypi.python.org/packages/source/d/docutils/docutils-0.12.tar.gz"
    sha1 "002450621b33c5690060345b0aac25bc2426d675"
  end

  resource "effect" do
    url "https://pypi.python.org/packages/source/e/effect/effect-0.10.tar.gz"
    sha1 "9d7d39fc1493728e971a330117111adf85695e27"
  end

  resource "eliot" do
    url "https://pypi.python.org/packages/source/e/eliot/eliot-0.11.0.tar.gz"
    sha1 "3662c58dc8fd0ea9a1a2a34e7c61a9cf824466e0"
  end

  resource "eliot-tree" do
    url "https://pypi.python.org/packages/source/e/eliot-tree/eliot-tree-15.3.0.tar.gz"
    sha1 "d780a2147fab8ab4ef45045da393fa1d87a019c5"
  end

  resource "enum34" do
    url "https://pypi.python.org/packages/source/e/enum34/enum34-1.0.4.tar.gz"
    sha1 "10b77f1db47e54abbc4ce6f61df542590b9ad972"
  end

  resource "futures" do
    url "https://pypi.python.org/packages/source/f/futures/futures-2.2.0.tar.gz"
    sha1 "0302253fb7e4fbbc48000b3e3dde244e9e7cd353"
  end

  resource "google-api-python-client" do
    url "https://pypi.python.org/packages/source/g/google-api-python-client/google-api-python-client-1.4.2.tar.gz"
    sha1 "0e213794dbed8406d1e57e32473806e36e896000"
  end

  resource "httplib2" do
    url "https://pypi.python.org/packages/source/h/httplib2/httplib2-0.9.2.tar.gz"
    sha1 "30746d5512c2f1cf1979e0c92438c17e4d80ce47"
  end

  resource "hypothesis" do
    url "https://pypi.python.org/packages/source/h/hypothesis/hypothesis-1.14.0.tar.gz"
    sha1 "93ca1b22256072cc5de99d1e759025a4f452c4e3"
  end

  resource "idna" do
    url "https://pypi.python.org/packages/source/i/idna/idna-2.0.tar.gz"
    sha1 "e48d607370b11e02512bac0985c902112c4dac40"
  end

  resource "ipaddr" do
    url "https://pypi.python.org/packages/source/i/ipaddr/ipaddr-2.1.11.tar.gz"
    sha1 "f9a16ddb3cf774b8dcf8894c2f4295c4e17d0ed3"
  end

  resource "ipaddress" do
    url "https://pypi.python.org/packages/source/i/ipaddress/ipaddress-1.0.7.tar.gz"
    sha1 "2747aafb67bb46bc9e69207f08c2265833e9d3db"
  end

  resource "iso8601" do
    url "https://pypi.python.org/packages/source/i/iso8601/iso8601-0.1.10.tar.gz"
    sha1 "523f48ec579c49c0c1496c094282b684e07d4b36"
  end

  resource "jmespath" do
    url "https://pypi.python.org/packages/source/j/jmespath/jmespath-0.9.0.tar.gz"
    sha1 "642800c1bc901a440639d5743c9cd74ba59c2d4a"
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

  resource "ndg-httpsclient" do
    url "https://pypi.python.org/packages/source/n/ndg-httpsclient/ndg_httpsclient-0.4.0.tar.gz"
    sha1 "82f6a1797b80a544cbfbc7f9f1df41da8463248d"
  end

  resource "netaddr" do
    url "https://pypi.python.org/packages/source/n/netaddr/netaddr-0.7.14.tar.gz"
    sha1 "6f72760b0d532d78c67c226069a6a07cde596810"
  end

  resource "netifaces" do
    url "https://pypi.python.org/packages/source/n/netifaces/netifaces-0.10.4.tar.gz"
    sha1 "c3fcd491a89c2994815053e853b005e7fc27c79a"
  end

  resource "oauth2client" do
    url "https://pypi.python.org/packages/source/o/oauth2client/oauth2client-1.5.2.tar.gz"
    sha1 "18e2356be4234bce2c191495ee2c96f2eafaf7bb"
  end

  resource "oslo.config" do
    url "https://pypi.python.org/packages/source/o/oslo.config/oslo.config-1.12.1.tar.gz"
    sha1 "a4f119e7dd8ffc71cf279d66fad212974271dc6a"
  end

  resource "oslo.i18n" do
    url "https://pypi.python.org/packages/source/o/oslo.i18n/oslo.i18n-1.7.0.tar.gz"
    sha1 "62191790e7caaae7cbad325adce33b44e2f1cc40"
  end

  resource "oslo.serialization" do
    url "https://pypi.python.org/packages/source/o/oslo.serialization/oslo.serialization-1.6.0.tar.gz"
    sha1 "be1b1776003f6fdb75b916faf605a221e6f1e014"
  end

  resource "oslo.utils" do
    url "https://pypi.python.org/packages/source/o/oslo.utils/oslo.utils-1.6.0.tar.gz"
    sha1 "c438435787c3e007564894200281f337cb11029b"
  end

  resource "pbr" do
    url "https://pypi.python.org/packages/source/p/pbr/pbr-0.11.1.tar.gz"
    sha1 "bbb65f8504e6c16517d7f6a1a745959299e23716"
  end

  resource "pip" do
    url "https://pypi.python.org/packages/source/p/pip/pip-7.1.0.tar.gz"
    sha1 "f0254e9b58d29268125fdf08e4cac303592f26d6"
  end

  resource "prettytable" do
    url "https://pypi.python.org/packages/source/P/PrettyTable/prettytable-0.7.2.tar.bz2"
    sha1 "b26ece396f071665b0a7c041958a1187ce239fe7"
  end

  resource "psutil" do
    url "https://pypi.python.org/packages/source/p/psutil/psutil-2.1.2.tar.gz"
    sha1 "ca69a2b6041250e9044bc5ee9436e20a8c869f49"
  end

  resource "pyOpenSSL" do
    url "https://pypi.python.org/packages/source/p/pyOpenSSL/pyOpenSSL-0.15.1.tar.gz"
    sha1 "e4d752de1fea5a40a982d4d55004cfb14109ba99"
  end

  resource "pyasn1" do
    url "https://pypi.python.org/packages/source/p/pyasn1/pyasn1-0.1.9.tar.gz"
    sha1 "d19599c5d9d039ead21ffcd1a2392c29a838ae03"
  end

  resource "pyasn1-modules" do
    url "https://pypi.python.org/packages/source/p/pyasn1-modules/pyasn1-modules-0.0.8.tar.gz"
    sha1 "0ee39382b5b97c8694a3373706edc1baea2e0e71"
  end

  resource "pycparser" do
    url "https://pypi.python.org/packages/source/p/pycparser/pycparser-2.14.tar.gz"
    sha1 "922162bad4aa8503988035506c1c65bbf8690ba4"
  end

  resource "pycrypto" do
    url "https://pypi.python.org/packages/source/p/pycrypto/pycrypto-2.6.1.tar.gz"
    sha1 "aeda3ed41caf1766409d4efc689b9ca30ad6aeb2"
  end

  resource "pyrsistent" do
    url "https://pypi.python.org/packages/source/p/pyrsistent/pyrsistent-0.11.9.tar.gz"
    sha1 "ff4f8524422d30588f1fba73d88eaebfc120d90d"
  end

  resource "python-cinderclient" do
    url "https://pypi.python.org/packages/source/p/python-cinderclient/python-cinderclient-1.1.1.tar.gz"
    sha1 "4c74f4f5f6827e4fe53c19986a570e462445a87b"
  end

  resource "python-dateutil" do
    url "https://pypi.python.org/packages/source/p/python-dateutil/python-dateutil-2.4.2.tar.gz"
    sha1 "1d975f5db65306a61f4353ef00308ec806f47f54"
  end

  resource "python-keystoneclient" do
    url "https://pypi.python.org/packages/source/p/python-keystoneclient/python-keystoneclient-1.4.0.tar.gz"
    sha1 "cbaf309ab27f1f7d211c9dfdd85f80e7d234e4b4"
  end

  resource "python-keystoneclient-rackspace" do
    url "https://pypi.python.org/packages/source/p/python-keystoneclient-rackspace/python-keystoneclient-rackspace-0.1.3.tar.gz"
    sha1 "39f481d82cf2cc39b5824676bad05711babb0463"
  end

  resource "python-novaclient" do
    url "https://pypi.python.org/packages/source/p/python-novaclient/python-novaclient-2.24.1.tar.gz"
    sha1 "a9ff22265cb29a23ac36c454db317da2183649e9"
  end

  resource "pytz" do
    url "https://pypi.python.org/packages/source/p/pytz/pytz-2015.4.tar.bz2"
    sha1 "84470b3586238c7cb51cd9b50a5b8734e19c4197"
  end

  resource "repoze.lru" do
    url "https://pypi.python.org/packages/source/r/repoze.lru/repoze.lru-0.6.tar.gz"
    sha1 "e7cfb2ca9e9dcbf237844f9e6233903a38ce6d09"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/source/r/requests/requests-2.7.0.tar.gz"
    sha1 "6db8805632521a13789161bccb14f761672ec46f"
  end

  resource "rsa" do
    url "https://pypi.python.org/packages/source/r/rsa/rsa-3.3.tar.gz"
    sha1 "994526e3ed87cffbe65036c4e3f7b904950053c7"
  end

  resource "service-identity" do
    url "https://pypi.python.org/packages/source/s/service_identity/service_identity-14.0.0.tar.gz"
    sha1 "10d7e29937f22d516659533f83af1e1427afdbd0"
  end

  resource "setuptools" do
    url "https://pypi.python.org/packages/source/s/setuptools/setuptools-18.0.1.tar.gz"
    sha1 "ebc4fe81b7f6d61d923d9519f589903824044f52"
  end

  resource "simplejson" do
    url "https://pypi.python.org/packages/source/s/simplejson/simplejson-3.7.3.tar.gz"
    sha1 "ac62202f9101100d8a28cb19862fac68e008931d"
  end

  resource "six" do
    url "https://pypi.python.org/packages/source/s/six/six-1.9.0.tar.gz"
    sha1 "d168e6d01f0900875c6ecebc97da72d0fda31129"
  end

  resource "stevedore" do
    url "https://pypi.python.org/packages/source/s/stevedore/stevedore-1.5.0.tar.gz"
    sha1 "1089a5e07e399c2ea89d71ffffab8fa7f74a2ac6"
  end

  resource "toolz" do
    url "https://pypi.python.org/packages/source/t/toolz/toolz-0.7.4.tar.gz"
    sha1 "2d4ed38740eec29928f7756162e45f1e0b0fc547"
  end

  resource "treq" do
    url "https://pypi.python.org/packages/source/t/treq/treq-0.2.1.tar.gz"
    sha1 "fc19b107d0cd6660f797ec6f82c3a61d5e2a768a"
  end

  resource "txeffect" do
    url "https://pypi.python.org/packages/source/t/txeffect/txeffect-0.9.tar.gz"
    sha1 "ee3393db15334994174455eac74c258fee118129"
  end

  resource "uritemplate" do
    url "https://pypi.python.org/packages/source/u/uritemplate/uritemplate-0.6.tar.gz"
    sha1 "55b15d6f97be32f66af556acce3685e5248b22a8"
  end

  resource "websocket-client" do
    url "https://pypi.python.org/packages/source/w/websocket-client/websocket_client-0.32.0.tar.gz"
    sha1 "9df03f0e64167be9fabe113c99297a4a8774f4fb"
  end

  resource "wheel" do
    url "https://pypi.python.org/packages/source/w/wheel/wheel-0.24.0.tar.gz"
    sha1 "c02262299489646af253067e8136c060a93572e3"
  end

  resource "wrapt" do
    url "https://pypi.python.org/packages/source/w/wrapt/wrapt-1.10.4.tar.gz"
    sha1 "8c16cd711c3cb0bebdf7592749a54879c85c629e"
  end

  resource "zope.interface" do
    url "https://pypi.python.org/packages/source/z/zope.interface/zope.interface-4.1.2.tar.gz"
    sha1 "6d940ecd621df0437ee9deb17d03ba105c13f07f"
  end

  def install
    # XXX These environment variables are necessary until cryptography has
    # wheels for OS X 10.11.
    # See https://github.com/pyca/cryptography/issues/2350
    ENV["LDFLAGS"] = "-L#{opt_prefix}/openssl/lib"
    ENV["CFLAGS"] = "-I#{opt_prefix}/openssl/include"

    ENV.prepend_create_path "PYTHONPATH", "#{libexec}/vendor/lib/python2.7/site-packages"
    %w[Babel PyYAML Twisted Werkzeug argparse attrs backports.ssl-match-hostname bitmath boto boto3 botocore cffi characteristic cryptography debtcollector docker-py docutils effect eliot eliot-tree enum34 futures google-api-python-client httplib2 hypothesis idna ipaddr ipaddress iso8601 jmespath jsonschema klein machinist msgpack-python ndg-httpsclient netaddr netifaces oauth2client oslo.config oslo.i18n oslo.serialization oslo.utils pbr pip prettytable psutil pyOpenSSL pyasn1 pyasn1-modules pycparser pycrypto pyrsistent python-cinderclient python-dateutil python-keystoneclient python-keystoneclient-rackspace python-novaclient pytz repoze.lru requests rsa service-identity setuptools simplejson six stevedore toolz treq txeffect uritemplate websocket-client wheel wrapt zope.interface].each do |r|
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
