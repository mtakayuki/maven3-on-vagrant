# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos65"

  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http = ENV['HTTP_PROXY'] unless ENV['HTTP_PROXY'].nil?
    config.proxy.https = ENV['HTTPS_PROXY'] unless ENV['HTTPS_PROXY'].nil?
    config.proxy.no_proxy = ENV['NO_PROXY'] unless ENV['NO_PROXY'].nil?
  end

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.omnibus.chef_version = :latest

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "maven"
  end
end
