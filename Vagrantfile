Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :private_network, ip: "172.20.1.10"
  config.vm.provision "chef_solo", run_list: ["demo"]

  config.vm.provider :virtualbox do |vb|
     vb.customize ["modifyvm", :id, "--memory", "2048"]
  end
  config.vm.provider :aws do |aws, override|
    override.ssh.private_key_path = "~/.ssh/java.insula.com.br.pem"
  end
end
