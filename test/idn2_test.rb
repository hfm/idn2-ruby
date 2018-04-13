require 'test_helper'

class Idn2Test < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Idn2::VERSION
  end

  def test_that_it_has_a_library_version_number
    refute_nil ::Idn2::IDN2_VERSION
  end

  def test_that_it_has_idn2_flags
    assert 1, Idn2::NFC_INPUT
    assert 2, Idn2::ALABEL_ROUNDTRIP
    assert 4, Idn2::TRANSITIONAL
    assert 8, Idn2::NONTRANSITIONAL
    assert 16, Idn2::ALLOW_UNASSIGNED
    assert 32, Idn2::USE_STD3_ASCII_RULES
  end
end
