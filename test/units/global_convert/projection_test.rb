require_relative '../../test_helper'

module GlobalConvert
  class ProjectionTest < MiniTest::Unit::TestCase

    def test_new
      assert_equal proj4_projection.to_s, Projection.new(:wgs84).to_s
    end


    def proj4_projection
      @proj4_projection ||= Proj4::Projection.new('+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs')
    end

  end
end
