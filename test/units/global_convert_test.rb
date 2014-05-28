require_relative '../test_helper'

class GlobalConvertTest < MiniTest::Unit::TestCase

  def teardown
    GlobalConvert.projection_file_path = GLOBAL_CONTRACT_PROJECTION_PATH
  end

  def test_projection_file_path
    path = 'foo/bar'
    GlobalConvert.projection_file_path = path
    assert_equal path, GlobalConvert.projection_file_path
  end
end
