require './lib/loader'
require './lib/validator'

dir = ARGV[0]
num_valid = 0
num_invalid = 0
num_error = 0
total = 0
puts "\n"
Dir[dir].map do |file_name|
  attributes = Loader.load(file_name)
  total+=1
  begin 
    v = Validator.new(attributes)
    if v.valid?
      num_valid+=1
    else
      num_invalid+=1
      puts "#{file_name} is NOT valid:\t #{v.errors.messages}"
    end
  rescue => e
    puts "#{file_name} raises error:\t #{e}"
    num_error+=1
  end
end

puts "\n\ntotal:#{total}, valid:#{num_valid}, invalid:#{num_invalid}, errors:#{num_error}"