# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.define 'vagrant1' do |subconfig|
    subconfig.vm.box = 'generic/ubuntu2204'
    subconfig.vm.hostname = 'ubuntu2204'
    subconfig.vm.box_check_update = false
    subconfig.vm.network 'public_network', bridge: 'nm-bridge', dev: 'nm-bridge'

    subconfig.vm.provider :libvirt do |libvirt|
      libvirt.cpus = 4
      libvirt.memory = '4096'
    end
  end
end
