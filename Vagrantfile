Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"
    config.vm.provision "shell", path: "script/install-go.sh", privileged: true
  end