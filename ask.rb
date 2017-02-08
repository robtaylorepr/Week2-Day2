#!/usr/bin/env ruby

# ask.rb ->  Week2, Day2 homework
# run the command line program
# ask the user for the number & units
# then do the conversion

require_relative 'converter'
require 'tty'

prompt = TTY::Prompt.new
input = prompt.ask("number?")

#unit as in unit of measure
unit   = prompt.select("Select unit", %w(
  c
  cups
  days
  f
  c
  feet
  fingers
  gram
  hand
  inches
  meters
  milliseconds
  miles
  ounce
  person
  quarts
  seconds
  toes
  years
  )
)

hash = {
  'c' =>      'c_to_f',
  'cups' =>    'cups_to_quarts',
  'days' =>    'days_to_years',
  'f' =>       'c',
  'feet' =>    ['feet_to_inches', 'feet_to_meters', 'feet_to_miles'],
  'fingers' => 'fingers_to_hand',
  'gram' =>    'gram_to_ounce',
  'hand' =>    'hand_to_fingers',
  'inches' =>  'inches_to_feet',
  'meters' =>  'meters_to_feet',
  'milliseconds' => 'milliseconds_to_seconds',
  'miles' =>   'miles_to_feet',
  'ounce' =>   'ounce_to_gram',
  'person' =>  'person_to_toes',
  'quarts' =>  'quarts_to_cups',
  'seconds' => 'seconds_to_milliseconds',
  'toes' =>    'toes_to_person',
  'years' =>   'years_to_days'
}
method_string = hash[unit]
if unit == 'feet'
  imm = prompt.select("feet to ?", %w(inches meters miles))
  method_string = "feet_to_" + imm  #imm is either inches, meters, or miles
else
  method_string = hash[unit]
end

command = "Converter.new(input.to_i).#{method_string}"
output = eval(command)
puts "output is #{output}"
