Vagrant.configure("2") do |config|

    #Configurações Server 01
    config.vm.define "webserver" do |webserver| 
      webserver.vm.box = "ubuntu/trusty64" 
      webserver.vm.hostname = "Romeupc01" 
      webserver.vm.network "private_network", ip: "192.168.1.10"
      webserver.vm.provider "virtualbox" do |vb|  
          vb.memory = 1024 
          vb.cpus = 1
      end
      webserver.vm.provision "shell", inline: <<-SHELL
        sudo apt-get update
        sudo apt-get install -y curl
        sudo apt-get install -y vim
        sudo apt-get install -y htop
      SHELL
    end
  
    #Configurações Server 02
    config.vm.define "docker" do |docker| 
      docker.vm.box = "centos/7" 
      docker.vm.hostname = "Romeupc02" #Hostname do servidor
      docker.vm.network "private_network", ip: "192.168.1.20"
      docker.vm.provider "virtualbox" do |vb| 
          vb.memory = 1024
          vb.cpus = 1
      end
      docker.vm.provision "shell", path: "install_docker.sh"    
    end
  end