
#Boilerplate for Vagrant virtual machines

## Requirements

* Vagrant 1.8.5+
* Vagrant Host Manager
* VirtualBox 5.1.2+

## Usage

Set up basic configuration by constants at the top of `Vagrant` file.

Uncomment installation command in file `vagrant/provision.sh` of components you want to have installed on your machine. Then adjust installation procedures and configurations in `vagrant/sh/` and `vagrant/config` directories.

If it's first boot of machine run command
```
vagrant upp
```

If you want to update components on machine run
```
vagrant up --provision
```

##Syncing folder on Windows

Install NFS Server on Windows. Then set `WINDOWS_SYNC_USING_NFS` to `true` and `WINDOWS_NFS_DIRECTORY_PATH` to exported path on windows.

Exemplary, working server is haneWIN NFS Server - installer and documentation is in `docs` directory. In control panel of NFS Server edit export config file - add entry eg. `c:\www\vagrant\project-name -name:project-name`.



