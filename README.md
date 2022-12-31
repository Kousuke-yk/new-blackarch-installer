### Overview
New BlackArch Linux Installer is a fork of BlackArch-Installer.
It is a multifunctional version that not only fixes bugs in the existing BlackArch-Installer, but also adds new options such as installing desktop environments and setting input methods.

### New Features
1. Fixed a bug that caused problems in the previous version.
2. A new option to install a desktop environment has been added. This allows users to make BlackArchLinux a more beautiful operating system.
3. Several useful features have been added.
4. Some UI changes have been made.

### Changed details

#### Bugs fixed from the original version
- Fixed problem with Extra Package not working.
> Removed invalid packages not present in the database and added new useful packages such as pulseaudio, k3b, noto-fonts-cjk, etc.

- Fixed a problem in which all BlackArch tools were not installed due to a signature check error.
> This is handled by having the keyring updated in advance and temporarily disabling the signature check in pacman's configuration file.

- Fixed problem with passwd error.
> This is a bug that has been widely known for some time and will be fixed in batches without prior user action.

#### Currently Confirmed Issues
- Reflector does not work
> This is due to an older version of Python built into BlackArch's Live ISO as of September 2021. The solution is to update Python, but this is difficult to resolve due to C library related errors that occur when updating.
Therefore, users will need to manually change the mirror server if necessary.
