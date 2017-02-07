require 'minitest/autorun'
require_relative 'converter'

class Testit < MiniTest::Test

  def test_c_to_f
    assert_equal 32,Converter.new(0).c_to_f
    assert_equal 212,Converter.new(100).c_to_f
  end

  def test_f_to_c
    assert_equal 0,Converter.new(32).f_to_c
    assert_equal 100,Converter.new(212).f_to_c
  end

  def test_quarts_to_cups
    assert_equal 4,Converter.new(1).quarts_to_cups
  end

  def test_cups_to_quarts
    assert_equal 1,Converter.new(4).cups_to_quarts
  end

  def test_inches_to_feet
    assert_equal 1,Converter.new(12).inches_to_feet
  end

  def test_feet_to_inches
    assert_equal 24,Converter.new(2).feet_to_inches
  end

  def test_seconds_to_milliseconds
    assert_equal 1000,Converter.new(1).seconds_to_milliseconds
  end

  def test_milliseconds_to_seconds
    assert_equal 1,Converter.new(1000).milliseconds_to_seconds
  end

  def test_feet_to_meters
    assert_equal 1,Converter.new(3.28).feet_to_meters
  end

  def test_meters_to_feet
    assert_equal 3.28,Converter.new(1).meters_to_feet
  end

  def test_ounce_to_gram
    assert_equal 28.35,Converter.new(1).ounce_to_gram
  end

  def test_gram_to_ounce
    assert_equal 1,Converter.new(28.34).gram_to_ounce
  end

  def test_days_to_years
    assert_equal 1,Converter.new(365.25).days_to_years
  end

  def test_years_to_days
    assert_equal 365.25,Converter.new(1).years_to_days
  end

  def test_toes_to_person
    assert_equal 1,Converter.new(10).toes_to_person
  end

  def test_person_to_toes
    assert_equal 10,Converter.new(1).person_to_toes
  end

  def test_fingers_to_hand
    assert_equal 1,Converter.new(5).fingers_to_hand
  end

  def test_hand_to_fingers
    assert_equal 5,Converter.new(1).hand_to_fingers
  end

end
