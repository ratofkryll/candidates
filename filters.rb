# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require './candidates'

def find(id)
  @candidates.select {|candidate| candidate[:id] == id}
end

def experienced?(candidate)
  candidate[:years_of_experience] >= 2 ? true : false
end

def github_points?(candidate)
  candidate[:github_points] >= 100 ? true : false
end

def languages_include?(candidate)
  candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")
end

def date_applied?(candidate)
  candidate[:date_applied] > 15.days.ago.to_date ? true : false
end

def over_age?(candidate)
  candidate[:age] > 17 ? true : false
end

def qualified_candidates(candidates)
  candidates.select do |candidate|
    experienced?(candidate) && github_points?(candidate) && languages_include?(candidate) && date_applied?(candidate) && over_age?(candidate)
  end
end

# More methods will go below

def ordered_by_qualifications(candidates)
  candidates.sort_by {|candidate| [-candidate[:years_of_experience], -candidate[:github_points]]}
end
