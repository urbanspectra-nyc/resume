# 1.2.0 (2016-08-15)
* Add support for converting to bhyve (#86)

# 1.1.1 (2016-02-24)
* Add option to force use of virtio for disks (#82)

# 1.0.4 (2016-01-01)
* Support spaces in box names (#79)

# 1.0.3 (2015-10-15)
* Fix compatibility with qemu version in EL6 (#76)

# 1.0.2 (2015-09-06)
* Allow period in box name when loading from URL (#75)

# 1.0.1 (2015-08-16)
* Throw error during version search when missing box (#72)

# 1.0.0 (2015-05-20)
* Support versioned boxes (#51)
* Support boxes with slash in name (#52)
* Rename input provider option (#68)
* Allow hyphen in box name when loading from url (#70)

# 0.3.2 (2015-03-03)
* Specify qcow compat instead of using default (#59)
* Provide clearer error when qemu-img missing (#62)

# 0.3.1 (2014-08-17)
* Improve compatibility with newer qemu-img releases

# 0.3.0 (2014-05-04)
* Support Vagrant 1.5 with unversioned boxes (#47)
* Drop support for Vagrant < 1.5
* Move input provider specifier into own option
* Warn if user provided identifier for Vagrant Cloud

# 0.2.6 (2014-05-04)
* Include CentOS 6.5/RHEL 6.5-friendly Qemu paths (#50)

# 0.2.5 (2014-02-01)
* Fix pci id for drives in kvm (#39)

# 0.2.4 (2014-01-23)
* Generate new vagrantfiles instead of copying them
* Set disk bus when converting to vagrant-libvirt (#41)

# 0.2.3 (2014-01-20)
* Warn when qemu version cannot read vmdk3 files (#29)
* Fix errors in how box name and provider were parsed (#35)
* Load box from file based on existence not name (#36)
* Warn when image is not the expected type for the provider (#38)

# 0.2.2 (2014-01-05)
* Determine virtualbox disk filename from ovf (#30)
* Move Qemu checks to own class

# 0.2.1 (2014-01-02)
* Support kvm as input (#17)

# 0.2.0 (2014-01-02)
* Fix how box is loaded by name (#19)
* Quit if input and output provider are the same (#27)
* Support libvirt as input (#18)

# 0.1.5 (2013-12-17)
* Preserve dsik interface type when coverting to KVM (#21)
* Remove dependency in minitar (#24)
* Support downloading input box (#9)
* Handle errors when reading ovf file

# 0.1.4 (2013-12-08)
* Rework box and converter implementation (#7)
* Write disk images as sparse files (#13)
* Switch vagrant-kvm disk format from raw to qcow2 (#16)
* Prefer the binary named qemu-system-* over qemu-kvm or kvm (#20)

# 0.1.3 (2013-12-03)

* Add support for vagrant-kvm (#12)
* Add acceptance tests

# 0.1.2 (2013-11-20)

* Rework provider and converter implementation (#7)

# 0.1.1 (2013-11-12)

* Fix handling of fractional virtual disk sizes (#11)

# 0.1.0 (2013-11-02)

* Initial release
