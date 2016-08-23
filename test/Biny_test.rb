require 'test_helper'

class BinyTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Biny::VERSION
  end
end
