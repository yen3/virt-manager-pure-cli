from setuptools import setup


setup(name='virt-manager-pure-cli-yen3',
      version="1.5.0.3",
      classifiers=[
        'Programming Language :: Python :: 2.7',
      ],
      description='virt-manager purl cli',
      author='Red hat',
      author_email='',
      license='MIT',
      packages=['virtcli', 'virtconv', 'virtinst', 'virtManager'],
      scripts=['bin/virt-clone', 'bin/virt-convert', 'bin/virt-install',
               'bin/virt-xml'],
      install_requires=['ipaddr', 'requests', 'libvirt-python==4.0.0'],
      include_package_data=True,
      zip_safe=False
     )


