require 'rubygems'
gem 'proj4rb'
require 'proj4'

require_relative 'global_convert/projection'
require_relative 'global_convert/location'

module GlobalConvert

  class << self
    attr_writer :projection_file_path

    def projection_file_path
      @projection_file_path ||= File.expand_path('../data/projections.yml', File.dirname(__FILE__))
    end
  end
    
end
