require_relative '../../test_helper'

module GlobalConvert
  class LocationTest < MiniTest::Unit::TestCase

    def test_easting_northing_to_lat_long
      location = Location.new(
        input: {
          projection: :osgb36,
          lon: easting,
          lat: northing
        },
        output: {
          projection: :wgs84
        }
      )
      assert_equal dst_point.lat, location.lat
      assert_equal dst_point.lon, location.lon
    end

    def long_lat_projection
      Projection.new :wgs84
    end
    
    def os_projection
      Projection.new :osgb36
    end

    def dst_point
      @dst_point ||= os_projection.transform(long_lat_projection, src_point)
    end
    
    def src_point
      Proj4::Point.new(easting, northing)
    end

    def easting
      529978
    end

    def northing
      186491
    end
  end
end
