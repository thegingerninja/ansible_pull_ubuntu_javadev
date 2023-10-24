# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.define 'vagrant1' do |subconfig|
    # subconfig.vm.box = 'generic/ubuntu2204'
    subconfig.vm.box = 'generic/debian12'
    subconfig.vm.hostname = 'debian12'
    subconfig.vm.box_check_update = false
    subconfig.vm.network 'public_network', bridge: 'nm-bridge', dev: 'nm-bridge'

    subconfig.vm.provider :libvirt do |libvirt|
      libvirt.cpus = 8
      libvirt.memory = '8192'
      libvirt.graphics_type = 'spice'
      # libvirt.nic_model_type = 'virtio'
      # libvirt.video_accel3d = true
      # libvirt.sound_type = 'ich9'
      # libvirt.machine_arch = 'x86_64'
      # libvirt.random model: 'random'
      # libvirt.kvm_hidden
      # libvirt.pci domain: '0x0000', bus: '0x2b', slot: '0x0', function: '0x0'
    end
  end
end
