require 'yaml'

module GlobalConvert
  class Projection < Proj4::Projection
    def initialize(name)
      raise 'Projection not found' unless settings = projections[name.to_s]
      super(settings['projection'])
    end

    private
    def projections
      YAML::load_file(GlobalConvert.projection_file_path)
    end

  end
end
