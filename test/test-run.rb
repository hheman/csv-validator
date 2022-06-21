require 'byebug'
require_relative './../csv-validator'

puts Validator.new.validate('test.csv')
