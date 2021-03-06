require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |key, value|
    value.each do |key, value|
      value << supply
    end 
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  new = holiday_hash[:winter].values
  new.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value|
    new_key = key.to_s
    puts "#{new_key.capitalize!}:"
    value.each do |key, value|
      new_key = key.to_s 
      new_key = new_key.gsub('_', ' ')
      new_key2 = new_key.split
      new_key2.each do |element|
        element.capitalize!
      end 
      new_key2 = new_key2.join(" ")
      puts "  #{new_key2}: #{value.join(", ")}"
    end 
  end 
end

def all_holidays_with_bbq(holiday_hash)
 bbq =[]
 holiday_hash.each do |key, value|
   value.each do |key, value|
     if value.include?("BBQ")
       bbq << key
     end 
   end 
 end 
 bbq
end







