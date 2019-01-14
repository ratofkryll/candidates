# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here
# @candidates.each do |candidate|
#   puts "Candidate [#{candidate[:id]}] #{experienced?(candidate)}"
# end
#
# puts find(15)

puts ordered_by_qualifications(@candidates)

# binding.pry

# pp @candidates
