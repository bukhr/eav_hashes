require 'active_support/configurable'

module ActiveRecord
  module EavHashes

    class Configuration
      include ActiveSupport::Configurable

      config_accessor(:permitted_classes) { [] }
    end

    def self.configuration
      @configuration ||=  Configuration.new
    end
    
    def self.configure
      yield(configuration) if block_given?
    end
  end
end