require 'test_helper'

class Idn2Test < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Idn2::VERSION
  end

  def test_that_it_has_a_library_version_number
    refute_nil ::Idn2::IDN2_VERSION
  end
end
