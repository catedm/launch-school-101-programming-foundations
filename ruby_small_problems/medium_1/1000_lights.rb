# -- HIGH VIEW -- #
# - hash representing the switches
# - all on initially
# - index = 2
#   - index += count

# 5 light example

require "pry"

def toggle_on_or_off(lights)
  1.upto(lights.size) do |round_number|
    lights.each do |position, value|
      if position % round_number == 0
        value == "off" ? lights[position] = "on" : lights[position] = "off"
      end
    end
  end
end

def final_hash(lights)
  lights.keys.select {|key| lights[key] == "on"}
end

lights = Hash.new
1.upto(1000) {|count| lights[count] = "off"}
toggle_on_or_off(lights)
p final_hash(lights)
