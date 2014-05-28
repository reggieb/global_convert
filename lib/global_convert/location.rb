module GlobalConvert
  class Location
    attr_reader :input_projection_name, :output_projection_name, :input_lon, :input_lat

    def initialize(args = {})
      @input_projection_name = args[:input][:projection]
      @output_projection_name = args[:output][:projection]
      @input_lon = args[:input][:lon]
      @input_lat = args[:input][:lat]
    end

    def lat
      output_point.lat
    end

    def lon
      output_point.lon
    end

    def input_projection
      @input_projection ||= Projection.new input_projection_name
    end

    def output_projection
      @output_projection ||= Projection.new output_projection_name
    end

    def input_point
      @point ||= Proj4::Point.new(input_lon, input_lat)
    end

    def output_point
      @outpoint_point ||= input_projection.transform(output_projection, input_point)
    end

  end
end
