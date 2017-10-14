Vagrant.configure(2) do |config|

    WINDOWS_SYNC_USING_NFS = true
    WINDOWS_NFS_DIRECTORY_PATH = "/vagrant"

    MACHINE_NAME = "vagrant-machine"
    MACHINE_HOSTNAME = "vagrant-machine.local"
    MACHINE_IP = "192.168.99.99"

    config.vm.box = "ubuntu/trusty64"

    if Vagrant::Util::Platform.windows? then
        if WINDOWS_SYNC_USING_NFS then
            # for Windows disable default syncing and set up nfs server according to README file
            config.vm.synced_folder ".", "/vagrant", disabled: true
            config.vm.provision "shell", inline: "mkdir -p /vagrant && mount -t nfs 10.0.2.2:#{WINDOWS_NFS_DIRECTORY_PATH} /vagrant", run: "always"
        end
    else
        # folder syncing for OSx and UNIX
        config.vm.synced_folder "./", "/vagrant", type: "nfs",  mount_options: ['rw', 'vers=3', 'tcp', 'fsc' ,'actimeo=2']
    end

    config.vm.provision "shell", path: "vagrant/provision.sh"

    # port forwarding
    #config.vm.network :forwarded_port, guest: 9200, host: 9200

    config.vm.define MACHINE_NAME do |node|
        node.vm.hostname = MACHINE_HOSTNAME
        node.vm.network :private_network, ip: MACHINE_IP
    end

    config.vm.provider "virtualbox" do |v|
        v.memory = 2048
        v.cpus = 2
    end

    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true
end
