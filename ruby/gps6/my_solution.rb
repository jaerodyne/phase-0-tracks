# Virus Predictor

# I worked on this challenge [by myself, with: Joy McCaffrey ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative used relative paths to access files
# require uses absolute path to access a file, so if the files are moved to another
# directory, they won't be available in the file

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

def print_list
  STATE_DATA.each do |state, population_data|
    state = VirusPredictor.new(state, population_data[:population_density], population_data[:population])
    state.virus_effects
  end

end

print_list

#=======================================================================
# Reflection Section

# In the state_data file, the hash for the states is the key, while all of the population
# data is used as the key. In the nested hash which contains both population and population density, 
# which each serves as a key, followed by their respective values.

# require_relative essentially links to the indicated file and allows all of that code
# to be accessible within the file

# You can iterate through a hash using a do loop. You can also use .map and .each

# In refactoring virus_effects, I noticed that the method didn't take any arguments, so it wasn't necessary to define them within the method

# I think I now understand how to create code that is DRY and how to iterate over a hash