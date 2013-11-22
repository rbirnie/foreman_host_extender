require 'foreman_column_view'
require 'foreman_host_extender'
require 'deface'

module ForemanHostExtender
  #Inherit from the Rails module of the parent app (Foreman), not the plugin.
  #Thus, inhereits from ::Rails::Engine and not from Rails::Engine
  class Engine < ::Rails::Engine

  end
end
