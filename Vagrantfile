# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.hostname = "blazegraph"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.name = "blazegraph"
  end

  config.vm.network :forwarded_port, guest: 9999, host: 9999 # Blazegraph

  # packages
  shared_dir = "/vagrant"
  packages = [
    'scripts/bootstrap.sh',
    'scripts/packages/vim.sh',
    'scripts/packages/git.sh',
    'scripts/packages/java.sh',
    'scripts/packages/java7.sh',
    'scripts/packages/maven.sh',
    'scripts/packages/blazegraph.sh',
    'scripts/cleanup.sh',
  ]
  packages.each {|p| config.vm.provision "shell", path: p, args: shared_dir }

end

