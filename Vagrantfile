# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.define 'vagrant1' do |subconfig|
    # subconfig.vm.box = 'generic/ubuntu2204'
    subconfig.vm.box = 'generic/debian12'
    subconfig.vm.hostname = 'general'
    subconfig.vm.box_check_update = false
    subconfig.vm.network 'public_network', bridge: 'nm-bridge', dev: 'nm-bridge'

    subconfig.vm.provider :libvirt do |libvirt|
      libvirt.graphics_type = 'spice'
      libvirt.video_type = 'qxl'
      libvirt.cpus = 8
      libvirt.memory = '8192'
      libvirt.sound_type = 'ich9'
      libvirt.graphics_type = 'spice'
      libvirt.channel type: 'unix', target_name: 'org.qemu.guest_agent.0', target_type: 'virtio'
      libvirt.channel type: 'spicevmc', target_name: 'com.redhat.spice.0', target_type: 'virtio'
    end

    subconfig.vm.provision :shell, path: "provision.sh"
  end
end
