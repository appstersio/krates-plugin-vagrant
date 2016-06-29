require 'kontena/machine/common'
include Kontena::Machine::Common

unless which('vagrant')
  abort('Vagrant is not installed. See https://www.vagrantup.com/ for instructions.')
end

require 'kontena/machine/random_name'
require_relative 'vagrant/master_provisioner'
require_relative 'vagrant/master_destroyer'
require_relative 'vagrant/node_provisioner'
require_relative 'vagrant/node_destroyer'
