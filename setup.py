from setuptools import setup


def retrieve_version_info():
    with open("VERSION") as f:
        return f.read().strip()


setup(name='virt-manager-pure-cli-yen3',
      version=retrieve_version_info(),
      classifiers=[
        'Programming Language :: Python :: 2.7',
      ],
      description='Test for my self',
      author='Red hat',
      author_email='',
      license='MIT',
      packages=['virtcli', 'virtconv', 'virtinst', 'virtManager'],
      scripts=['bin/virt-clone', 'bin/virt-convert', 'bin/virt-install',
               'bin/virt-xml'],
      install_requires=['ipaddr', 'requests'],
      include_package_data=True,
      zip_safe=False
     )


