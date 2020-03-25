# Debian for ARM development on Vagrant

A Vagrantfile to setup a Debian 64-bit (stretch) virtual machine with a basic ARM toolchain to compile ARM code

_Read this in other languages: [Français](README.fr.md)_

## Installation

### Requirements

Check that you have the latest versions of [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/) installed.

For 32-bit machines, get the latest [VirtualBox 5.2 build](https://www.virtualbox.org/wiki/Download_Old_Builds_5_2) as 32-bit support has been discontinued in VirtualBox 6.x.

### Steps

1. Clone or download this repository in your local machine. You may place it anywhere you like

2. Get the `opt_gnu_arm_64.tar.bz2` archive and place it in the same directory

3. Opn a command line terminal in the directory with the Vagrantfile and run `vagrant up`.

The first time you run this command, expect it to take some time to complete. This process can take from 10 to 30 minutes depending on your internet connection speed and computer. It will download the Debian operating system and then provision it with the ARM development tools.

That's it 🎉

## Usage

This virtual machine is configured so that all files in the `./code` folder are kept in sync between your local machine and the virtual machine. So you can use the code editor of your choice to edit your files on your local machine, and compile and run them on the virtual machine instantly.

#### Start the virtual machine: `vagrant up`

Open a command line terminal in the directory with the Vagrantfile and run `vagrant up` to boot your virtual machine. This command will only take a few seconds to run after the initial provisioning (step 3).

#### Connect to the virtual machine: `vagrant ssh`

Once your machine is booted, open a command line terminal and run `vagrant ssh` to connect to the virtual machine through SSH.

#### Shutdown the virtual machine: `vagrant halt`

When you're done working on your files, you can shut down the vitual machine by running `vagrant halt` from the directory with the Vagrantfile.

#### Delete the virtual machine: `vagrant destroy`

If you wish to delete the virtual machine, run `vagrant destroy` from the directory with the Vagrantfile. This won't delete your files, but you will have to wait for the machine to get provisioned the next time you run `vagrant up`.

## Issues

If you encounter problems during or after installation, please open a new issue on the repository: https://github.com/pavril/vagrant-debian-arm/issues/new. Make sure to provide context (operating system, software versions, ...) and keep it concise.
