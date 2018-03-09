# virt-manager-pure-cli v.1.50

* The origianl project provides full features but it requeires `pygobject`,
  `libosinfo` ... etc objects. The fork emits these requirement and provides
  a simple package to run `virt-install`, `virt-xml` ... etc. You can see the
  Limitation section to get more details.

## Python version

* Python 2.7

## Requirement

* `libvirt-python==4.0.0`
* `ipaddr`
* `requests`

## Install

```
pip install virt-manager-pure-cli-yen3
```

## Limitation

* The fork version removes [the support for libosinfo](https://github.com/yen3/virt-manager/commit/336fc68c90370c9d2fcdbae288e4526d5134def0) so you can only use
   `--os-type=generic` flag for any coammnds. For example

           virt-install --name ubuntu-aarch64 --ram 4096 --vcpus 4 --arch aarch64 \
             --boot uefi \
             --disk /home/ubuntu/disk.qcow2,device=disk,bus=virtio \
             --os-type=generic \
             --nographics \
             --location 'http://ports.ubuntu.com/dists/xenial/main/installer-arm64/'

## Developement

### Build

```
./clone.sh
python setup.py build
```

### Upload

```
./clone.sh
python setup.py bdist_wheel upload -r pypi
```
